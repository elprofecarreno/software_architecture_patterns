from flask import Flask
from routes.routing import routes
from flask_login import LoginManager
from models.usermodels import get_user

app = Flask(__name__)

app.config['SECRET_KEY'] = '7110c8ae51a4b5af97be6534caef90e4bb9bdcb3380af008f90b23a5d1616bf319bc298105da20fe'
login_manager = LoginManager(app)

@login_manager.user_loader
def load_user(username):
    return get_user(username)

# DEFINED ROUTES
app.register_blueprint(routes)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)