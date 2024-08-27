import streamlit as st

def init_session_state():
    if 'user_preferences' not in st.session_state:
        st.session_state.user_preferences = {}
    
    # Ensure the current user has a preferences dictionary
    username = st.session_state.get("username", "default_user")
    if username not in st.session_state.user_preferences:
        st.session_state.user_preferences[username] = {}

def get_preference(key, default=None):
    username = st.session_state.get("username", "default_user")
    user_prefs = st.session_state.user_preferences.get(username, {})
    return user_prefs.get(key, default)

def set_preference(key, value):
    username = st.session_state.get("username", "default_user")
    if username not in st.session_state.user_preferences:
        st.session_state.user_preferences[username] = {}
    st.session_state.user_preferences[username][key] = value