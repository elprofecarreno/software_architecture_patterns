import socket 
import sys
import datetime
import time

import os
from dotenv import load_dotenv

# LOAD ENVIRONMENT
load_dotenv()

SERVER_HOST = os.getenv('SERVER_HOST')
SERVER_PORT = int(os.getenv('SERVER_PORT'))

def send_message():
    print('#################### INIT SOCKET CONNECTION ####################3')

    now = datetime.datetime.now()
    date = now.strftime("%Y-%m-%d %H:%M:%S")
    # CREATE SOCKET CLIENT TCP/IP
    socket_client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # BIND THE SOCKET PORT
    server_address = (SERVER_HOST, SERVER_PORT)
    print(f'client connect to server: {server_address[0]} port: {server_address[1]}')
    socket_client.connect(server_address)

    try:
        # SEND DATA
        message = f'MESSAGE {date}'
        print(f'sending message: {message}')
        socket_client.sendall(message.encode('utf-8'))

        # WAIT FOR RESPONSE
        received = 0
        expected = len(message)

        while received < expected:
            data = socket_client.recv(16)
            received = received + len(data)
            print(f'received {data}')

    finally:
        print('#################### CLOSE SOCKET CONNECTION ####################3')
        socket_client.close()

while True:
    send_message()
    time.sleep(5)
