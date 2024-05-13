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

st.title("College Data Maintenance")

# Make a GET request to the get-college-list endpoint
college_list_response = requests.get(f"http://{host}:8000/get-college-list")
colleges = college_list_response.json()

# Create a select box for the colleges
selected_college = st.selectbox('Select one college to edit', colleges)

url = f"http://{host}:8000/get-college-data/"

if selected_college:
    # Make a GET request to the FastAPI endpoint with the selected college as a query parameter
    response = requests.get(url, params={"colleges": selected_college})

    # Convert the response to a DataFrame
    df = pd.DataFrame(response.json())

    edited_df = st.data_editor(df, hide_index=True, use_container_width=True)

    print("edited_df is: "+str(edited_df))