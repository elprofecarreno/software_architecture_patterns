REM Obtiene el ID del contenedor para eliminarlo
for /f "tokens=1" %%i in ('docker ps -a ^| findstr "monolithic-app-container"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rm -f %CONTAINER_ID%

REM Obtiene el ID del contenedor para eliminarlo
for /f "tokens=1" %%i in ('docker ps -a ^| findstr "monolithic-db-container"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rm -f %CONTAINER_ID%

REM Obtiene el ID de la imagen para eliminarlo
for /f "tokens=1" %%i in ('docker images ^| findstr "monolithic-app-container"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rmi -f %CONTAINER_ID%

REM Obtiene el ID de la imagen para eliminarlo
for /f "tokens=1" %%i in ('docker images ^| findstr "monolithic-db-container"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rmi -f %CONTAINER_ID%


REM CONSTRUIR IMAGEN, DESPLEGAR CONTENEDORES APP WEB Y BALANCEADOR
set "BASE_DIR=%~dp0"
echo BASE_DIR = %BASE_DIR%
docker-compose -f %BASE_DIR%docker-compose.yaml up