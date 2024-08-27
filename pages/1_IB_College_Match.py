import requests
import streamlit as st
import numpy as np
import pandas as pd
from sqlalchemy import create_engine
from streamlit.logger import get_logger
import matplotlib.pyplot as plt
import seaborn as sns
import os
from session_state import init_session_state, get_preference, set_preference

# Initialize session state
init_session_state()

host = os.getenv('FAST_API_HOST', 'localhost')

url = f"http://{host}:8000/get-all-data/"

LOGGER = get_logger(__name__)

# Make a GET request to the FastAPI endpoint
response = requests.get(url)

# Convert the response to a DataFrame
df = pd.DataFrame(response.json())

st.write("""
# IB College Match
UNIS Acceptance Data (2021 - 2023)
""")

# Convert the 'Year', 'GPA', 'SAT' and 'ACT' columns to numeric
df['Year'] = pd.to_numeric(df['Year'], errors='coerce')
df['GPA'] = pd.to_numeric(df['GPA'], errors='coerce')
df['SAT'] = pd.to_numeric(df['SAT'], errors='coerce')
df['ACT'] = pd.to_numeric(df['ACT'], errors='coerce')

# Get unique values for the 'School' column
universities = sorted(df['School'].unique().tolist())
# Add 'All' to the beginning of the list
universities.insert(0, 'All')

# Get unique values for the 'Outcome' column
outcomes = sorted(df['Outcome'].unique().tolist())

# Create a selectbox for the 'School' column
selected_university = st.selectbox('Select a university', universities, 
                                   index=universities.index(get_preference('selected_college', 'All')) if get_preference('selected_college', 'All') in universities else '0', 
                                   key='selected_college',
                                   on_change=lambda: set_preference('selected_college', st.session_state.selected_college))

# Create a multi-select list for the 'Outcome' column
selected_outcomes = st.multiselect('Select outcomes', outcomes, 
                                   default=get_preference('selected_outcomes'), 
                                   key='selected_outcomes',
                                   on_change=lambda: set_preference('selected_outcomes', st.session_state.selected_outcomes))

# Create two columns
col1, col2 = st.columns(2)

# Create checkboxes for GPA, SAT and ACT scores
compare_gpa = col1.checkbox('Filter by GPA', value=get_preference('compare_gpa'), key='compare_gpa',
                            on_change=lambda: set_preference('compare_gpa', st.session_state.compare_gpa))
compare_sat = col1.checkbox('Filter by SAT score', value=get_preference('compare_sat'), key='compare_sat',
                            on_change=lambda: set_preference('compare_sat', st.session_state.compare_sat))
compare_act = col1.checkbox('Filter by ACT score', value=get_preference('compare_act'), key='compare_act',
                            on_change=lambda: set_preference('compare_act', st.session_state.compare_act))

# Create sliders for GPA, SAT and ACT scores
max_gpa = col2.slider('Maximum GPA', min_value=0.0, max_value=7.0, value=get_preference('max_gpa'), step=0.01, key='max_gpa',
                      on_change=lambda: set_preference('max_gpa', st.session_state.max_gpa))
max_sat = col2.slider('Maximum SAT score', min_value=400, max_value=1600, value=get_preference('max_sat'), step=10, key='max_sat',
                      on_change=lambda: set_preference('max_sat', st.session_state.max_sat))
max_act = col2.slider('Maximum ACT score', min_value=1, max_value=36, value=get_preference('max_act'), step=1, key='max_act',
                      on_change=lambda: set_preference('max_act', st.session_state.max_act))

# Filter the DataFrame based on the selected university
if selected_university != 'All':
    filtered_df = df[df['School'] == selected_university]
else:
    filtered_df = df

# Filter the DataFrame based on the selected GPA, SAT and ACT scores
if compare_gpa:
    filtered_df = filtered_df[filtered_df['GPA'] <= max_gpa]
if compare_sat:
    filtered_df = filtered_df[filtered_df['SAT'] <= max_sat]
if compare_act:
    filtered_df = filtered_df[filtered_df['ACT'] <= max_act]

# Filter the DataFrame based on the selected outcomes
filtered_df = filtered_df[filtered_df['Outcome'].isin(selected_outcomes)]

# Check if the 'index' column exists and drop it
if 'index' in filtered_df.columns:
    filtered_df = filtered_df.drop(columns=['index'])

# Display the filtered dataframe as a table with the fields properly formatted
styled_df = filtered_df.style.format({
    'Year' : "{:d}",  # Ensures Year is displayed as an integer without commas
    'GPA': "{:.2f}",  # Formats GPA with 2 decimal places
    'SAT': "{:.0f}",  # Ensures SAT is displayed as an integer without commas
    'ACT': "{:.0f}",  # Ensures ACT is displayed as an integer without commas
})
st.dataframe(styled_df, use_container_width=True)

# Create a figure with two subplots: one for SAT vs. GPA and one for ACT vs. GPA
fig, ax = plt.subplots(1, 2, figsize=(15, 7))

# Create a scatter plot for SAT vs. GPA
sns.scatterplot(data=filtered_df, x='SAT', y='GPA', hue='Outcome', ax=ax[0])
ax[0].set_title('SAT vs. GPA')

# Create a scatter plot for ACT vs. GPA
sns.scatterplot(data=filtered_df, x='ACT', y='GPA', hue='Outcome', ax=ax[1])
ax[1].set_title('ACT vs. GPA')

# Display the plots
st.pyplot(fig)