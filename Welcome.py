import streamlit as st
import streamlit_authenticator as stauth
import yaml
from yaml.loader import SafeLoader
from session_state import init_session_state, get_preference, set_preference
from local_storage import save_to_local_storage, init_local_storage

# Use the variable for setting the page configuration
st.set_page_config(
    page_title="IB College Match",
    page_icon="favicon.ico",
)

# Create two columns for the image and title
col1, col2 = st.columns([1, 5])

# Add the image to the first column
with col1:
    st.image("grad-diploma.png", width=100)  # Adjust the path and width as needed

# Add the title to the second column
with col2:
    st.markdown("<h1 style='font-size: 50px; margin-bottom: 0;'>IB College Match</h1>", unsafe_allow_html=True)

main_page = st.Page("pages/1_IB_College_Match.py", title="Find Colleges That Match Your Stats")
college_page = st.Page("pages/2_College_Specific_Data.py", title="Research Your Dream Schools")
data_maintenance = st.Page("pages/3_Data_Maintenance.py", title="Advanced Data Maintenance")

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