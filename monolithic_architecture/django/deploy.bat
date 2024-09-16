REM Obtiene el ID del contenedor para eliminarlo
for /f "tokens=1" %%i in ('docker ps -a ^| findstr "apache2_container_1"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rm -f %CONTAINER_ID%

REM Obtiene el ID del contenedor para eliminarlo
for /f "tokens=1" %%i in ('docker ps -a ^| findstr "apache2_container_2"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rm -f %CONTAINER_ID%

REM Obtiene el ID del contenedor para eliminarlo
for /f "tokens=1" %%i in ('docker ps -a ^| findstr "apache2_container_3"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rm -f %CONTAINER_ID%

REM Obtiene el ID del contenedor para eliminarlo
for /f "tokens=1" %%i in ('docker ps -a ^| findstr "loadbalancer_nginx"') do set CONTAINER_ID=%%i
if not "%CONTAINER_ID%"=="" docker rm -f %CONTAINER_ID%

REM Obtiene el ID de la imagen para eliminarlo
for /f "tokens=3" %%i in ('docker images ^| findstr "app_web"') do set IMAGE_ID=%%i
if not "%IMAGE_ID%"=="" docker rmi -f %IMAGE_ID%

REM CONSTRUIR IMAGEN, DESPLEGAR CONTENEDORES APP WEB Y BALANCEADOR
docker compose up