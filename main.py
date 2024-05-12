import streamlit as st
from pages import page1, page2

pages = {
    "IB College Match": page1,
    "College Specific Data": page2,
}

st.sidebar.title('Navigation')
page = st.sidebar.radio("Go to", list(pages.keys()))

# Call the appropriate function based on the selected option
pages[page]()