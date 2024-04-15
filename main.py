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

    # Check if the 'index' column exists and drop it
    if 'index' in filtered_df.columns:
        filtered_df = filtered_df.drop(columns=['index'])

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

    # Make a GET request to the get-college-list endpoint
    college_list_response = requests.get(f"http://{host}:8000/get-college-list")
    colleges = college_list_response.json()

    # Create a select box for the colleges
    selected_colleges = st.multiselect('Select one or more colleges to compare', colleges)

    # Convert the selected_colleges list to a string for the query parameter
    selected_colleges_str = ','.join(selected_colleges)

    url = f"http://{host}:8000/get-college-data/"

    if selected_colleges_str:
        # Make a GET request to the FastAPI endpoint with the selected college as a query parameter
        response = requests.get(url, params={"colleges": selected_colleges_str})

        # Convert the response to a DataFrame
        df = pd.DataFrame(response.json())

        for college in selected_colleges:
            # Filter the DataFrame for the current college
            college_df = df[df['School'] == college]

            # Filter the DataFrame for accepted students
            accepted_df = college_df[college_df['Outcome'].str.contains('Accepted')]

            # Convert the 'GPA', 'SAT' and 'ACT' columns to numeric
            accepted_df['GPA'] = pd.to_numeric(accepted_df['GPA'], errors='coerce')
            accepted_df['SAT'] = pd.to_numeric(accepted_df['SAT'], errors='coerce')
            accepted_df['ACT'] = pd.to_numeric(accepted_df['ACT'], errors='coerce')

            # Calculate the statistics for the accepted students
            acceptance_rate = len(accepted_df) / len(college_df)
            avg_gpa = accepted_df['GPA'].mean()
            avg_sat = accepted_df['SAT'].mean()
            sat_range = accepted_df['SAT'].max() - accepted_df['SAT'].min()
            avg_act = accepted_df['ACT'].mean()
            act_range = accepted_df['ACT'].max() - accepted_df['ACT'].min()

            # Display the statistics
            st.write(f"School: {college}")
            st.write(f"Acceptance Rate: {acceptance_rate * 100}%")
            st.write(f"Average GPA: {avg_gpa}")
            st.write(f"Average SAT: {avg_sat}")
            st.write(f"SAT Range: {sat_range}")
            st.write(f"Average ACT: {avg_act}")
            st.write(f"ACT Range: {act_range}")

            # Create a histogram for GPA, SAT, and ACT scores
            fig, ax = plt.subplots(3, 1, figsize=(10, 15))

            sns.histplot(data=accepted_df, x='GPA', ax=ax[0])
            ax[0].set_title('GPA Distribution')

            sns.histplot(data=accepted_df, x='SAT', ax=ax[1])
            ax[1].set_title('SAT Distribution')

            sns.histplot(data=accepted_df, x='ACT', ax=ax[2])
            ax[2].set_title('ACT Distribution')

            # Display the plots
            st.pyplot(fig)

            # Check if the 'index' column exists and drop it
            if 'index' in accepted_df.columns:
                accepted_df = accepted_df.drop(columns=['index'])
            
            # Display the DataFrame as a table
            st.dataframe(accepted_df, use_container_width=True)
    
pages = {
    "IB College Match": page1,
    "College Specific Data": page2,
}

st.sidebar.title('Navigation')
page = st.sidebar.radio("Go to", list(pages.keys()))

# Call the appropriate function based on the selected option
pages[page]()