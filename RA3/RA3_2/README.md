# RA3_2

Para la realización de esta práctica, vamos realizarla sobre un contenedor docker. Dicho container va a tener acceso a la red debido a que vamos a estar implementando la red local de docker. Para ello, el primer paso va a ser realizar la descarga del repositorio de github:
    git clone https://github.com/digininja/DVWA.git

    IMG CLONACIÓN


Una vez descargado, accedemos al mismo para proceder con la creación de la imagen de docker a partir del Dockerfile facilitado:

    cd DVWA/

    docker build -t dvwa:p2 .

    IMG CONSTRUIDA

    IMG IMAGENES

El siguiente paso va a ser crear el contenedor para la imagen recien creada, para ello, vamos a ejecutar el siguiente comando:



