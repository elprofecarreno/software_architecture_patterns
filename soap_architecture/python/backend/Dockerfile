# OS ALPINE
FROM python:3.9-slim
# CREATE DIRECTORY
RUN mkdir -p WORKDIR /app/soap
# COPY APP SOAP TO CONTAINER
COPY portal_service/* /app/soap/

# CURRENT DIRECTORY
WORKDIR /app/soap

# INSTALL DEPENDECIES
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto 8000
EXPOSE 8000

# RUN PYTHON APP SOAP
CMD python3 app_soap.py