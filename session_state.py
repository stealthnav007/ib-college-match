import streamlit as st
from local_storage import load_from_local_storage, save_to_local_storage, init_local_storage

def init_session_state():
    init_local_storage()

    keys = ['selected_college', 'selected_colleges', 'compare_gpa', 'compare_sat', 'compare_act', 'max_gpa', 'max_sat', 'max_act', 'selected_outcomes']
    
    for key in keys:
        if key not in st.session_state:
            st.session_state[key] = load_from_local_storage(key)

    if st.session_state.selected_college is None:
        st.session_state.selected_college = 'All'
    if st.session_state.selected_colleges is None:
        st.session_state.selected_colleges = []
    if st.session_state.compare_gpa is None:
        st.session_state.compare_gpa = False
    if st.session_state.compare_sat is None:
        st.session_state.compare_sat = False
    if st.session_state.compare_act is None:
        st.session_state.compare_act = False
    if st.session_state.max_gpa is None:
        st.session_state.max_gpa = 7.0
    if st.session_state.max_sat is None:
        st.session_state.max_sat = 1600
    if st.session_state.max_act is None:
        st.session_state.max_act = 36
    if st.session_state.selected_outcomes is None:
        st.session_state.selected_outcomes = []