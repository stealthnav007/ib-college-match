import streamlit as st
import streamlit_authenticator as stauth
import yaml
from yaml.loader import SafeLoader
from session_state import init_session_state, get_preference, set_preference
from local_storage import save_to_local_storage, init_local_storage

# Use the variable for setting the page configuration
st.set_page_config(
    page_title="Student Profile and Admissions Research Companion (SPARC)",
    page_icon="favicon.ico",
)

# Store the page title in a variable
page_title = "Student Profile and Admissions Research Companion (SPARC)"

# Use the same variable to display the title as a heading
st.markdown(f"# {page_title}")

main_page = st.Page("pages/1_IB_College_Match.py", title="Find Colleges by GPA & SAT/ACT Scores")
college_page = st.Page("pages/2_College_Specific_Data.py", title="Look Up College-Specific Data")
data_maintenance = st.Page("pages/3_Data_Maintenance.py", title="Data Maintenance")

with open('./stauth.yml') as file:
    config = yaml.load(file, Loader=SafeLoader)

authenticator = stauth.Authenticate(
    config['credentials'],
    config['cookie']['name'],
    config['cookie']['key'],
    config['cookie']['expiry_days'],
    config['pre-authorized']
)

authenticator.login()

if st.session_state["authentication_status"]:
    username = st.session_state["username"]
    save_to_local_storage('username', username)
    
    # Initialize session state
    init_session_state()
    
    # Initialize local storage
    init_local_storage()
    
    pg = st.navigation([main_page, college_page, data_maintenance])
    with st.container():
        st.markdown(f'<p style="font-size:20px;"><b>Welcome {st.session_state["name"]} </b></p>', unsafe_allow_html=True)
    pg.run()
    authenticator.logout()
elif st.session_state["authentication_status"] is False:
    st.error('Username/password is incorrect')
elif st.session_state["authentication_status"] is None:
    st.warning('Please enter your username and password')