# RA3

En esta practica, hemos realizado la fortificación de apache en contenedores Docker, así como la creación de ficheros Dockerfile para poder crear nuestra propia imagen y estas han sido subidas a DockerHub. Si se requiere descargar cada una de las imagenes, en cada uno de los directorios hay un archivo README.md con el enlace directo para realizar la descarga de las mismas junto con los pasos a seguir para la creación manual del contenedor. 

Se puede comprobar que todas las imagenes se han podido ejecutar de manera satisfactoria desde la carpeta "assets" dentro de cada uno de los directorios. Dicha carpeta contiene las capturas de puesta en marcha y comprobación de lo solicitado en cada una de los ejecicios. 

El apartado 3-3 no se ha incluido debido a que se ha realizado la foriticación de eliminar la versión del servidor de la cabecera desde el primer momento. 



```
        ├── 3-1_Apache_Hardening
        │   ├── 3-1-1
        │   │   ├── Dockerfile
        │   │   ├── README.md
        │   │   ├── assets
        │   │   │   ├── EJECUCION
        │   │   │   │   └── Docker Setup P1.png
        │   │   │   ├── PoC
        │   │   │   │   ├── Cabeceras HSTS y CSP.png
        │   │   │   │   └── Modulo Headers activado y Autoindex no Habilitado.png
        │   │   │   └── README.md
        │   │   ├── html
        │   │   │   └── index.html
        │   │   └── ssl
        │   │       └── configP1-ssl.conf
        │   ├── 3-1-2
        │   │   ├── Dockerfile
        │   │   ├── README.md
        │   │   ├── assets
        │   │   │   ├── EJECUCION
        │   │   │   │   └── Docker setup P2.png
        │   │   │   ├── PoC
        │   │   │   │   ├── Antes XSS.png
        │   │   │   │   ├── Ejecucion XSS.png
        │   │   │   │   └── Modulo Seguridad Activo.png
        │   │   │   └── README.md
        │   │   ├── html
        │   │   │   ├── index.html
        │   │   │   └── post.php
        │   │   └── ssl
        │   │       └── configP1-ssl.conf
        │   ├── 3-1-3
        │   │   ├── Dockerfile
        │   │   ├── README.md
        │   │   ├── assets
        │   │   │   ├── EJECUCION
        │   │   │   │   └── Ejecución Setup P3.png
        │   │   │   ├── PoC
        │   │   │   │   ├── Test 1 Reglas P3.png
        │   │   │   │   ├── Test 2 Command Injection P3.png
        │   │   │   │   ├── Test 3 Path Traversal P3.png
        │   │   │   │   └── Test 4 Vision Logs P3.png
        │   │   │   └── README.md
        │   │   ├── html
        │   │   │   ├── index.html
        │   │   │   └── post.php
        │   │   └── ssl
        │   │       └── configP1-ssl.conf
        │   └── 3-1-4
        │       ├── Dockerfile
        │       ├── README.md
        │       ├── assets
        │       │   ├── EJECUCION
        │       │   │   └── Ejecucion Setup P4.png
        │       │   ├── PoC
        │       │   │   ├── Funcionamiento contra DoS.png
        │       │   │   └── Logs errores.png
        │       │   └── README.md
        │       ├── avoid
        │       │   └── evasive.conf
        │       ├── html
        │       │   ├── index.html
        │       │   └── post.php
        │       └── ssl
        │           └── configP1-ssl.conf
        ├── 3-2_Certificados
        │   ├── Dockerfile
        │   ├── README.md
        │   ├── assets
        │   │   ├── EJECUCION
        │   │   │   └── Ejecucion Setup P2.png
        │   │   ├── PoC
        │   │   │   ├── Modificacion Hosts.png
        │   │   │   └── Prueba Certificados.png
        │   │   └── README.md
        │   ├── avoid
        │   │   └── evasive.conf
        │   ├── certificados
        │   │   ├── IesCaminas-CA-Intermedia.crt
        │   │   ├── iescaminas-edu.mylocal.crt
        │   │   └── iescaminas-edu.mylocal.key
        │   ├── html
        │   │   ├── index.html
        │   │   └── post.php
        │   └── ssl
        │       └── configP1-ssl.conf
        └── 3-3_Apache_Hardening_Best_Practices


```
