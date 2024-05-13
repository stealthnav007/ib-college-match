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

pass