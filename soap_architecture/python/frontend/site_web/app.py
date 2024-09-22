from flask import Flask
from views.index import home_bp
from views.user import user_bp
from views.region import region_bp

from dotenv import load_dotenv
import os
# LOAD ENVIRONMENT
load_dotenv()

SERVER_HOST=os.getenv('SERVER_HOST')
SERVER_PORT=int(os.getenv('SERVER_PORT'))

app = Flask(__name__, template_folder='templates')

# Registrar los blueprints
app.register_blueprint(home_bp)
app.register_blueprint(user_bp)
app.register_blueprint(region_bp)

if __name__ == '__main__':
    app.run(host=SERVER_HOST, port=SERVER_PORT, debug=True)