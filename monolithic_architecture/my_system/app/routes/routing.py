from flask import Blueprint, render_template
from routes.public.publicrouting import routes_public
from routes.admin.adminrouting import routes_admin

routes = Blueprint('routes', __name__)

# REGISTER ROUTES FROM VIEWS PUBLIC
routes.register_blueprint(routes_public)

# REGISTER ROUTES FROM VIEWS ADMIN MODULE
routes.register_blueprint(routes_admin)