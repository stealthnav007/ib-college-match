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

st.title("Data Maintenance")

# Make a GET request to the get-college-list endpoint
host = os.getenv('FAST_API_HOST', 'localhost')
college_list_response = requests.get(f"http://{host}:8000/get-college-list")
colleges = college_list_response.json()

# Create a select box for the colleges
selected_college = st.selectbox('Select a college to edit', colleges, 
                                index=colleges.index(get_preference('selected_college_maintenance')) if get_preference('selected_college_maintenance') in colleges else 0, 
                                key='selected_college_maintenance',
                                on_change=lambda: set_preference('selected_college_maintenance', st.session_state.selected_college_maintenance))

url = f"http://{host}:8000/get-college-data/"

if selected_college:
    # Make a GET request to the FastAPI endpoint with the selected college as a query parameter
    response = requests.get(url, params={"colleges": selected_college})

    # Convert the response to a DataFrame
    df = pd.DataFrame(response.json())

    # Use the data editor to allow editing of the DataFrame
    edited_df = st.data_editor(df, key='data_editor')

    # Add a button to save changes
    if st.button('Save Changes'):
        # Convert the edited DataFrame to a list of dictionaries
        data_to_update = edited_df.to_dict('records')
        
        # Make a POST request to the update-college-data endpoint
        update_url = f"http://{host}:8000/update-college-data/"
        update_response = requests.post(update_url, json=data_to_update)
        
        if update_response.status_code == 200:
            st.success('Changes saved successfully!')
        else:
            st.error(f"Error saving changes: {update_response.text}")

# You might want to add more functionality here, such as:
# - Adding new colleges
# - Deleting colleges
# - Bulk data import/export options