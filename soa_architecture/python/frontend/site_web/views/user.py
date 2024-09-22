from flask import render_template, Blueprint
from zeep import Client
import os

# Definir el cliente SOAP para usuarios
USER_SERVICE_WSDL = os.getenv("SOAP_WS")
user_client = Client(USER_SERVICE_WSDL)

user_bp = Blueprint('user', __name__)

@user_bp.route('/users')
def users():
    try:
        # Llamar al servicio SOAP para obtener la lista de usuarios
        users = user_client.service.list_users()
        print(f'users: {users}')
        return render_template('users.html', users=users)
    except Exception as e:
        return f"Error: {e}"