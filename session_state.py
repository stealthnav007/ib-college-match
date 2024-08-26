import streamlit as st

def init_session_state():
    if 'user_preferences' not in st.session_state:
        st.session_state.user_preferences = {
            'selected_college': 'All',
            'selected_colleges': [],
            'compare_gpa': False,
            'compare_sat': False,
            'compare_act': False,
            'max_gpa': 7.0,
            'max_sat': 1600,
            'max_act': 36,
            'selected_outcomes': []
        }

def get_preference(key, default=None):
    return st.session_state.user_preferences.get(key, default)

def set_preference(key, value):
    st.session_state.user_preferences[key] = value