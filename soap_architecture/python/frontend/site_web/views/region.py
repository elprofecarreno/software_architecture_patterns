from flask import render_template, Blueprint
from zeep import Client
import os

REGION_SERVICE_WSDL = os.getenv("SOAP_WS")
region_client = Client(REGION_SERVICE_WSDL)

region_bp = Blueprint('region', __name__)

@region_bp.route('/regions')
def regions():
    try:
        # Llamar al servicio SOAP para obtener la lista de regiones
        regions = region_client.service.list_regions()
        print(f'users: {regions}')
        return render_template('regions.html', regions=regions)
    except Exception as e:
        return f"Error: {e}"