import streamlit as st
import pandas as pd
from streamlit.logger import get_logger

LOGGER = get_logger(__name__)


st.write("""
# My first app
Hello *world!*
""")
 
df = pd.read_csv("SCOIR-UNIS-College-Data.csv")
st.table(df)