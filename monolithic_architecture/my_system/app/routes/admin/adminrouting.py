from flask import Blueprint
from views.admin.homeview import home
from views.admin.regionsview import regions

routes_admin = Blueprint('routes_admin', __name__, url_prefix='/admin', template_folder="../../template/admin", static_folder="../../static")

def authorization():
    print('user authorized.')

# METHOD AUTHORIZATION BEFORE ROUTES AND RENDER PAGE
routes_admin.before_app_request(authorization)

# REGISTER ROUTES FROM VIEWS ADMIN MODULE
routes_admin.register_blueprint(home)
routes_admin.register_blueprint(regions)