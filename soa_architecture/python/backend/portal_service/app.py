from spyne import Application
from spyne.protocol.soap import Soap11
from spyne.server.wsgi import WsgiApplication
from services.user_service import UserService
from services.region_service import RegionService

from dotenv import load_dotenv
import os
# LOAD ENVIRONMENT
load_dotenv()

SERVER_HOST=os.getenv('SERVER_HOST')
SERVER_PORT=int(os.getenv('SERVER_PORT'))

app = Application(
    [UserService, RegionService],
    tns='com.soap',
    in_protocol=Soap11(validator='lxml'),
    out_protocol=Soap11()
)
wsgi_application = WsgiApplication(app)

if __name__ == '__main__':
    from wsgiref.simple_server import make_server
    server = make_server(SERVER_HOST, SERVER_PORT, wsgi_application)
    print(f'Servidor SOAP corriendo en http://{SERVER_HOST}:{SERVER_PORT}')
    server.serve_forever()
    