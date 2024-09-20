# archivo: soap_service.py
from spyne import Application, rpc, ServiceBase, Integer, Unicode
from spyne.protocol.soap import Soap11
from spyne.server.wsgi import WsgiApplication

class CalculadoraService(ServiceBase):
    @rpc(Integer, Integer, _returns=Integer)
    def sumar(ctx, a, b):
        return a + b

application = Application(
    [CalculadoraService],
    tns='com.ejemplo.calculadora',
    in_protocol=Soap11(validator='lxml'),
    out_protocol=Soap11()
)

wsgi_application = WsgiApplication(application)

if __name__ == '__main__':
    from wsgiref.simple_server import make_server
    server = make_server('0.0.0.0', 8000, wsgi_application)
    print("Servidor SOAP corriendo en http://0.0.0.0:8000")
    server.serve_forever()