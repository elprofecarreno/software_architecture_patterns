## MONOLITHIC ARCHICTURE

Este proyecto tiene por objetivo ejemplificar una arquitectura monolitica, mediante una aplicación web con flask y una base de datos mysql.

![monolithic_architecture](../monolithic_architecture/docs/monolithic_architecture.drawio.png)

### INSTALACIÓN CON DOCKER 

Para desplegar la aplicación web y la base de datos deberemos ejecutar el siguiente comando.

```shell
docker compose up
```

### INICIO DE SESIÓN

Para poder iniciar sesión deberemos ingresar a [http://127.0.0.1:9000](http://127.0.0.1:9000) o [http://localhost:9000](http://localhost:9000).

Para ingresar al sistema deberemos realizarlo con las siguientes credenciales.

```
user: admin
pass: admin
```

![my_system_1](../monolithic_architecture/docs/my_system_1.png)

![my_system_2](../monolithic_architecture/docs/my_system_2.png)

![my_system_3](../monolithic_architecture/docs/my_system_3.png)

### INICIO DJANGO ADMIN

Para poder iniciar sesión deberemos ingresar a [http://127.0.0.1:9000/admin](http://127.0.0.1:9000/admin) o [http://localhost:9000/admin](http://localhost:9000/admin).

```
user: admin
pass: admin
```