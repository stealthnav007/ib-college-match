import streamlit as st
import pandas as pd
from streamlit.logger import get_logger

LOGGER = get_logger(__name__)


st.write("""
# IB College Match
UNIS Acceptance Data (2021 - 2023)
""")
 
df = pd.read_csv("SCOIR-UNIS-College-Data.csv")
st.dataframe(df)