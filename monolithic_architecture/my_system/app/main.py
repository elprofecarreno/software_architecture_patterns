from flask import Flask
from flask_login import LoginManager
from persistences.db import db
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)

# DATABASE CONFIG
SQLALCHEMY_DATABASE_URI=os.getenv('SQLALCHEMY_DATABASE_URI')
SQLALCHEMY_TRACK_MODIFICATIONS=os.getenv('SQLALCHEMY_TRACK_MODIFICATIONS')
app.config['SQLALCHEMY_DATABASE_URI']=SQLALCHEMY_DATABASE_URI
app.config['SQLALCHEMY_TRACK_MODIFICATIONS']=bool(SQLALCHEMY_TRACK_MODIFICATIONS)
db.init_app(app)

# SECRET KEY FLASK FORMS
app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')
# LOGIN FLASK CONFIG
login_manager = LoginManager(app)

from modules.auth.models import Users
@login_manager.user_loader
def load_user(id):
    print('load_user')
    users = Users.get_by_id(id)
    print(f'load_user -> users: {users}')
    return users

# DEFINED ROUTES
from modules.auth import auth_bp
app.register_blueprint(auth_bp)
from modules.admin import admin_bp
app.register_blueprint(admin_bp)

SERVER_DEBUG=bool(os.getenv('SERVER_DEBUG'))
SERVER_HOST=os.getenv('SERVER_HOST')
SERVER_PORT=int(os.getenv('SERVER_PORT'))
if __name__ == '__main__':
    app.run(host=SERVER_HOST, port=SERVER_PORT, debug=SERVER_DEBUG)