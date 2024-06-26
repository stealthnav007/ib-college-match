import requests
import streamlit as st
import numpy as np
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

    print("selected_colleges_str is: "+selected_colleges_str)
    print("selected_colleges is: "+str(selected_colleges))

    url = f"http://{host}:8000/get-college-data/"

    if selected_colleges_str:
        # Make a GET request to the FastAPI endpoint with the selected college as a query parameter
        response = requests.get(url, params={"colleges": selected_colleges_str})

        # Convert the response to a DataFrame
        df = pd.DataFrame(response.json())

        # Create a DataFrame to store the data for all accepted students
        all_accepted_df_list = []

        # Initialize a list to store the statistics for each school
        stats_list = [] 

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
            #acceptance_rate = round(len(accepted_df) / len(college_df)*100, 2)
            #avg_gpa = accepted_df['GPA'].mean().round(2)
            #avg_sat = accepted_df['SAT'].mean().round(2)
            #sat_range = (accepted_df['SAT'].max() - accepted_df['SAT'].min()).round(2)
            #avg_act = accepted_df['ACT'].mean().round(2)
            #act_range = (accepted_df['ACT'].max() - accepted_df['ACT'].min()).round(2)

            # Calculate the statistics for the accepted students
            acceptance_rate = round(len(accepted_df) / len(college_df)*100, 2) if not pd.isna(len(accepted_df) / len(college_df)*100) else np.nan
            avg_gpa = round(accepted_df['GPA'].mean(), 2) if not pd.isna(accepted_df['GPA'].mean()) else 0
            avg_sat = round(accepted_df['SAT'].mean(), 2) if not pd.isna(accepted_df['SAT'].mean()) else 0
            sat_range = round(accepted_df['SAT'].max() - accepted_df['SAT'].min(), 2) if not pd.isna(accepted_df['SAT'].max() - accepted_df['SAT'].min()) else 0
            avg_act = round(accepted_df['ACT'].mean(), 2) if not pd.isna(accepted_df['ACT'].mean()) else 0
            act_range = round(accepted_df['ACT'].max() - accepted_df['ACT'].min(), 2) if not pd.isna(accepted_df['ACT'].max() - accepted_df['ACT'].min()) else 0

            # Append the accepted_df DataFrame to the all_accepted_df DataFrame
            all_accepted_df_list.append(accepted_df)

            # Append the statistics to the stats_list
            stats_list.append([college, acceptance_rate, avg_gpa, avg_sat, sat_range, avg_act, act_range])

        # Concatenate the DataFrames in the all_accepted_df_list
        all_accepted_df = pd.concat(all_accepted_df_list)

        # Create a DataFrame from the list
        stats_df = pd.DataFrame(stats_list, columns=['School', 'Acceptance Rate', 'Average GPA', 'Average SAT', 'SAT Range', 'Average ACT', 'ACT Range'])

        # Display the DataFrame as a table
        st.table(stats_df)

        # Define a color palette
        palette = {school: color for school, color in zip(selected_colleges, sns.color_palette(n_colors=len(selected_colleges)))}

        # Create a boxplot for GPA, SAT, and ACT scores
        fig, ax = plt.subplots(3, 1, figsize=(10, 15))

        sns.boxplot(data=all_accepted_df, x='GPA', y='School', ax=ax[0], palette=palette)
        ax[0].set_title('GPA Distribution')

        sns.boxplot(data=all_accepted_df, x='SAT', y='School', ax=ax[1], palette=palette)
        ax[1].set_title('SAT Distribution')

        try:
            sns.boxplot(data=all_accepted_df, x='ACT', y='School', ax=ax[2], palette=palette)
            ax[2].set_title('ACT Distribution')
        except:
            st.write("You chose a college that does not have ACT data")

        # Display the plots
        st.pyplot(fig)

        # Check if the 'index' column exists and drop it
        if 'index' in all_accepted_df.columns:
            all_accepted_df = all_accepted_df.drop(columns=['index'])
        
        # Display the DataFrame as a table
        st.dataframe(all_accepted_df, use_container_width=True)

def page3():
    pass