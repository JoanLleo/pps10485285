Para realizar este ejercicio, nos podemos bajar la imagen directamente de dockerhub 

	docker pull pps10485285/ra3:3-2

O ejecutar los siguientes comandos para construirla desde el Dockerfile facilitado:


Creamos una imagen de Docker a partir del Dockerfile 

	docker build -t apache:p3-2 .

Creamos el contenedor y lo ejecutamos 

	docker run -d --name apache-P3-2 -p 4443:443 apache:p3-2

Accedemos a nuestro Container desde el navegador:

	https://localhost:4443

Para poder visualizar la página web con los certificados instalados, hay que editar nuestro fichero /etc/hosts para ñadir a la resolución de nombre del localhost "iescaminas-edu.mylocal" para que la resolución del nombre al acceder a traves del navegador, sea cifrada.

Por otro lado, tambien hay que añadir en nuestro navegador, el certificado de la CA Intermedia, facilitado en la carpeta "certificados". 
