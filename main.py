import requests
import streamlit as st
import pandas as pd
from sqlalchemy import create_engine
from streamlit.logger import get_logger
import matplotlib.pyplot as plt
import seaborn as sns

import os

host = os.getenv('FAST_API_HOST', 'localhost')

def page1():
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

    # Convert the 'GPA', 'SAT' and 'ACT' columns to numeric
    df['GPA'] = pd.to_numeric(df['GPA'], errors='coerce')
    df['SAT'] = pd.to_numeric(df['SAT'], errors='coerce')
    df['ACT'] = pd.to_numeric(df['ACT'], errors='coerce')

    # Add 'All' to the list of universities
    universities = list(df['School'].unique())
    universities.insert(0, 'All')

    # Create a selectbox for the 'School' column
    selected_university = st.selectbox('Select a university', universities)

    # Get the unique values in the 'Outcome' column
    outcomes = list(df['Outcome'].unique())

    # Create a multi-select list for the 'Outcome' column
    selected_outcomes = st.multiselect('Select outcomes', outcomes)

    # Create columns for checkboxes and sliders
    col1, col2 = st.columns(2)

    # Create checkboxes for GPA, SAT and ACT scores
    compare_gpa = col1.checkbox('Filter by GPA')
    col1.markdown("---")  # Add empty space
    compare_sat = col1.checkbox('Filter by SAT score')
    col1.markdown("---")  # Add empty space
    compare_act = col1.checkbox('Filter by ACT score')

    # Create sliders for GPA, SAT and ACT scores
    max_gpa = col2.slider('Maximum GPA', min_value=0.0, max_value=7.0, step=0.01, key='gpa')
    max_sat = col2.slider('Maximum SAT score', min_value=400, max_value=1600, step=10, key='sat')
    max_act = col2.slider('Maximum ACT score', min_value=1, max_value=36, step=1, key='act')

    # Apply the filters only if the corresponding checkbox is checked
    if selected_university == 'All':
        filtered_df = df
    else:
        filtered_df = df[df['School'] == selected_university]
    if compare_gpa:
        filtered_df = filtered_df[filtered_df['GPA'] <= max_gpa]
    if compare_sat:
        filtered_df = filtered_df[filtered_df['SAT'] <= max_sat]
    if compare_act:
        filtered_df = filtered_df[filtered_df['ACT'] <= max_act]

    # Filter the DataFrame based on the selected outcomes
    filtered_df = filtered_df[filtered_df['Outcome'].isin(selected_outcomes)]

    # Display the filtered dataframe as a table
    st.dataframe(filtered_df, use_container_width=True)

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

def page2():
    st.title("College Specific Data")

    # Create text input fields for GPA, SAT, and ACT
    gpa = st.text_input("Enter GPA")
    sat = st.text_input("Enter SAT score")
    act = st.text_input("Enter ACT score")

    # Convert the input values to the appropriate data types
    gpa = float(gpa) if gpa else None
    sat = int(sat) if sat else None
    act = int(act) if act else None

    # Only make the GET request and display the table if GPA is not None
    if gpa is not None:
        url = f"http://{host}:8000/get-gpa-filtered-data/"

        # Make a GET request to the FastAPI endpoint with the input values as query parameters
        response = requests.get(url, params={"gpa": gpa, "sat": sat, "act": act})

        # Convert the response to a DataFrame
        df = pd.DataFrame(response.json())

        # Display the DataFrame as a table
        st.dataframe(df, use_container_width=True)
    else:
        st.write("Please enter at least a GPA to see data. You can also enter SAT and ACT scores to further refine the search.")



pages = {
    "IB College Match": page1,
    "College Specific Data": page2,
}

st.sidebar.title('Navigation')
page = st.sidebar.radio("Go to", list(pages.keys()))

# Call the appropriate function based on the selected option
pages[page]()