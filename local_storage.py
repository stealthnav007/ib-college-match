import streamlit as st
from streamlit.components.v1 import html

def load_from_local_storage(key):
    return st.session_state.get(key)

def save_to_local_storage(key, value):
    st.session_state[key] = value

def init_local_storage():
    html("""
    <script>
    function loadFromLocalStorage(key) {
        const username = localStorage.getItem('username') || 'default_user';
        const value = localStorage.getItem(username + '_' + key);
        if (value) {
            Streamlit.setComponentValue(key, JSON.parse(value));
        }
    }

    function saveToLocalStorage(key, value) {
        const username = localStorage.getItem('username') || 'default_user';
        localStorage.setItem(username + '_' + key, JSON.stringify(value));
    }

    // Load initial values
    loadFromLocalStorage('selected_college');
    loadFromLocalStorage('selected_colleges');
    loadFromLocalStorage('compare_gpa');
    loadFromLocalStorage('compare_sat');
    loadFromLocalStorage('compare_act');
    loadFromLocalStorage('min_gpa');
    loadFromLocalStorage('max_gpa');
    loadFromLocalStorage('min_sat');
    loadFromLocalStorage('max_sat');
    loadFromLocalStorage('min_act');
    loadFromLocalStorage('max_act');
    loadFromLocalStorage('selected_outcomes');

    // Listen for changes
    Streamlit.setComponentReady();
    Streamlit.addEventListener('selected_college', function(event) {
        saveToLocalStorage('selected_college', event.detail.value);
    });
    Streamlit.addEventListener('selected_colleges', function(event) {
        saveToLocalStorage('selected_colleges', event.detail.value);
    });
    Streamlit.addEventListener('compare_gpa', function(event) {
        saveToLocalStorage('compare_gpa', event.detail.value);
    });
    Streamlit.addEventListener('compare_sat', function(event) {
        saveToLocalStorage('compare_sat', event.detail.value);
    });
    Streamlit.addEventListener('compare_act', function(event) {
        saveToLocalStorage('compare_act', event.detail.value);
    });
    Streamlit.addEventListener('min_gpa', function(event) {
        saveToLocalStorage('min_gpa', event.detail.value);
    });
    Streamlit.addEventListener('max_gpa', function(event) {
        saveToLocalStorage('max_gpa', event.detail.value);
    });
    Streamlit.addEventListener('min_sat', function(event) {
        saveToLocalStorage('min_sat', event.detail.value);
    });
    Streamlit.addEventListener('max_sat', function(event) {
        saveToLocalStorage('max_sat', event.detail.value);
    });
    Streamlit.addEventListener('min_act', function(event) {
        saveToLocalStorage('min_act', event.detail.value);
    });
    Streamlit.addEventListener('max_act', function(event) {
        saveToLocalStorage('max_act', event.detail.value);
    });
    Streamlit.addEventListener('selected_outcomes', function(event) {
        saveToLocalStorage('selected_outcomes', event.detail.value);
    });
    </script>
    """, height=0)
