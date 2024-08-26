import requests
import streamlit as st
import numpy as np
import pandas as pd
from sqlalchemy import create_engine
from streamlit.logger import get_logger
import matplotlib.pyplot as plt
import seaborn as sns
import os
from session_state import init_session_state
from local_storage import save_to_local_storage

# Initialize session state
init_session_state()

st.title("Data Maintenance")

# Make a GET request to the get-college-list endpoint
college_list_response = requests.get(f"http://{host}:8000/get-college-list")
colleges = college_list_response.json()

# Create a select box for the colleges
selected_college = st.selectbox('Select a college to edit', colleges, key='selected_college_maintenance', on_change=lambda: save_to_local_storage('selected_college_maintenance', st.session_state.selected_college_maintenance))

url = f"http://{host}:8000/get-college-data/"

if selected_college:
    # Make a GET request to the FastAPI endpoint with the selected college as a query parameter
    response = requests.get(url, params={"colleges": selected_college})

    # Convert the response to a DataFrame
    df = pd.DataFrame(response.json())

    # Use the data editor to allow editing of the DataFrame
    edited_df = st.data_editor(df, key='data_editor', on_change=lambda: save_to_local_storage('edited_df', st.session_state.data_editor))

    # Add a button to save changes
    if st.button('Save Changes'):
        # Here you would add code to save the edited DataFrame back to your database
        st.success('Changes saved successfully!')

    print("edited_df is: "+str(edited_df))