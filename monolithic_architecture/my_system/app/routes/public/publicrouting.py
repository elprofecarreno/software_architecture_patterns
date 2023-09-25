from flask import Blueprint
from views.loginview import login

routes_public = Blueprint('routes_public', __name__, url_prefix='/', template_folder="../../template", static_folder="../../static")

# REGISTER ROUTES PUBLIC
routes_public.register_blueprint(login)