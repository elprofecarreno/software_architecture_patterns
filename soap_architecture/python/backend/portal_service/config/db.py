from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from dotenv import load_dotenv
import os
# LOAD ENVIRONMENT
load_dotenv()

DB_USER=os.getenv('DB_USER')
DB_PASS=os.getenv('DB_PASS')
DB_HOST=os.getenv('DB_HOST')
DB_PORT=os.getenv('DB_PORT')
DB_NAME=os.getenv('DB_NAME')

DATABASE_URL = f'mysql+mysqlconnector://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}'
print(f'DATABASE_URL: {DATABASE_URL}')

engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)

def get_db_session():
    return Session()