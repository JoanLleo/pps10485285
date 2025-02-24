Para realizar este ejercicio, nos podemos bajar la imagen directamente de dockerhub 

	docker pull pps10485285/ra3:3-1-4

O ejecutar los siguientes comandos para construirla desde el Dockerfile facilitado:


Creamos una imagen de Docker a partir del Dockerfile 

	docker build -t apache:p4 .

Creamos el contenedor y lo ejecutamos 

	docker run -d --name apache-P4 -p 4443:443 apache:p4

Accedemos a nuestro Container desde el navegador:

	https://localhost:4443

