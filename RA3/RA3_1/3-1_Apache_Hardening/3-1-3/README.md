# 3-1-3

## Creación del container
Para realizar este ejercicio, nos podemos bajar la imagen directamente de dockerhub 

	docker pull pps10485285/ra3:3-1-3

O ejecutar los siguientes comandos para construirla desde el Dockerfile facilitado:


Creamos una imagen de Docker a partir del Dockerfile 

	docker build -t apache:p3 .

Creamos el contenedor y lo ejecutamos 

	docker run -d --name apache-P3 -p 4443:443 apache:p3

Accedemos a nuestro Container desde el navegador:

[https://localhost:4443](https://localhost:4443)

![1](./images/Ejecución_Setup_P3.png)

## Comprobaciones

En este apartado, vamos a realizar una serie de pruebas para verificar que no somos vulnerables a una serie de ataques tras la instalación de reglas OWASP:


### Comprobación del funcionamiento de las reglas

![2](./images/Test_1_Reglas_P3.png)

### Command Injection

![3](./images/Test_2_Command_Injection_P3.png)

### Path Traversal

![4](./images/Test_3_Path_Traversal_P3.png)

## Visualización de logs

![5](./images/Test_4_Vision_Logs_P3.png)
