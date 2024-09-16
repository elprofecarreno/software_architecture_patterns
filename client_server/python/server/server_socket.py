import socket
import sys
import os
from dotenv import load_dotenv

# LOAD ENVIRONMENT
load_dotenv()
print('load environment')
SERVER_HOST = os.getenv('SERVER_HOST', '0.0.0.0')
SERVER_PORT = int(os.getenv('SERVER_PORT', 11000))

# CREATE SOCKET TCP/IP
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# BIND THE SOCKET PORT
server_address = (SERVER_HOST, SERVER_PORT)
print(f'socket up server: {server_address[0]} port: {server_address[1]}')
server_socket.bind(server_address)

# INCOMING CONNECTIONS
server_socket.listen(1)

while True:
    # WAIT FOR A CLIENT CONNECTION
    print('#################### WAIT FOR A CLIENT CONNECTION ####################')
    connection, client_address = server_socket.accept()
    try: 
        print(f'connection from: {client_address}')
        while True:
            data = connection.recv(16)

            if data:
                print(f'received {data}')
                print('sendig data back to the client')
                connection.sendall(data)

            else: 
                print(f'no data from client : {client_address}')
                break
    finally:
        connection.close()
