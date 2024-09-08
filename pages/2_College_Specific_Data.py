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

st.markdown("""
<h2 style='font-size: 32px; text-align: left;'>Research Your Dream Schools</h2>
<p style='text-align: left;'>Your School Acceptance Data (2021 - 2023)</p>
""", unsafe_allow_html=True)

# Make a GET request to the get-college-list endpoint
host = os.getenv('FAST_API_HOST', 'localhost')
college_list_response = requests.get(f"http://{host}:8000/get-college-list")
colleges = sorted(college_list_response.json())

# Create a select box for the colleges
selected_colleges = st.multiselect('Select one or more colleges to compare', colleges, 
                                   default=get_preference('selected_colleges'), 
                                   key='selected_colleges',
                                   on_change=lambda: set_preference('selected_colleges', st.session_state.selected_colleges))

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

        # Convert the 'Year, 'GPA', 'SAT' and 'ACT' columns to numeric
        accepted_df['Year'] = pd.to_numeric(df['Year'], errors='coerce')
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

    # Check if all_accepted_df is empty
    if all_accepted_df.empty:
        st.warning("No accepted student data available for the selected colleges.")
    else:
        sns.boxplot(data=all_accepted_df, x='GPA', y='School', ax=ax[0], palette=palette)
        ax[0].set_title('GPA Distribution')

        try:
            sns.boxplot(data=all_accepted_df, x='SAT', y='School', ax=ax[1], palette=palette)
            ax[1].set_title('SAT Distribution')

            sns.boxplot(data=all_accepted_df, x='ACT', y='School', ax=ax[2], palette=palette)
            ax[2].set_title('ACT Distribution')
        except:
            st.write("You chose a college that does not have ACT or SATdata")    
    
        # Display the plots
        st.pyplot(fig)

        # Check if the 'index' column exists and drop it
        if 'index' in all_accepted_df.columns:
            all_accepted_df = all_accepted_df.drop(columns=['index'])
    
        # Display the DataFrame as a table
        styled_df = all_accepted_df.style.format({
            'Year' : "{:d}",  # Ensures Year is displayed as an integer without commas
            'GPA': "{:.2f}",  # Formats GPA with 2 decimal places
            'SAT': "{:.0f}",  # Ensures SAT is displayed as an integer without commas
            'ACT': "{:.0f}",  # Ensures ACT is displayed as an integer without commas
        })
        st.dataframe(styled_df, use_container_width=True)
