# Instalación de Jenkins en Docker

Este documento describe cómo instalar y configurar Jenkins en un contenedor Docker de manera sencilla.

## Prerrequisitos

- **Docker** instalado en tu máquina. Verifica con:
  ```bash
  docker --version
  ```
  Si no lo tienes, descárgalo desde [Docker Official Site](https://docs.docker.com/get-docker/).

## Pasos de Instalación

### 1. Descarga la imagen de Jenkins
Descarga la versión LTS (Long Term Support) de Jenkins desde Docker Hub:
```bash
docker pull jenkins/jenkins:lts
```

### 2. Crea un directorio para persistir datos
Crea un directorio en tu máquina para almacenar las configuraciones y datos de Jenkins:
```bash
mkdir ~/jenkins_home
```

### 3. Ejecuta el contenedor de Jenkins
Inicia un contenedor Docker con Jenkins usando el siguiente comando:
```bash
docker run -d -p 8080:8080 -p 50000:50000 -v ~/jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts
```
**Explicación de los parámetros:**
- `-d`: Ejecuta el contenedor en segundo plano.
- `-p 8080:8080`: Mapea el puerto 8080 del host al puerto 8080 del contenedor (interfaz web de Jenkins).
- `-p 50000:50000`: Mapea el puerto para agentes de Jenkins (usado para nodos esclavos).
- `-v ~/jenkins_home:/var/jenkins_home`: Monta el directorio local `~/jenkins_home` para persistir datos.
- `--name jenkins`: Asigna el nombre "jenkins" al contenedor.
- `jenkins/jenkins:lts`: Usa la imagen LTS de Jenkins.

### 4. Verifica que el contenedor esté corriendo
Confirma que el contenedor está activo:
```bash
docker ps
```
Deberías ver el contenedor `jenkins` en la lista.

### 5. Accede a Jenkins
Abre un navegador y navega a:
```
http://localhost:8080
```
La primera vez, Jenkins te pedirá una contraseña inicial.

### 6. Obtén la contraseña inicial
Recupera la contraseña inicial ejecutando:
```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```
Copia la contraseña y pégala en la interfaz web.

### 7. Configura Jenkins
Sigue las instrucciones en la interfaz web:
- Instala los plugins recomendados (opción sugerida para principiantes).
- Crea un usuario administrador.
- Configura la URL de Jenkins (puedes dejar la predeterminada si es local).

### 8. ¡Listo!
Jenkins estará configurado y listo para usar.

## Comandos Útiles

- **Detener el contenedor**:
  ```bash
  docker stop jenkins
  ```
- **Iniciar el contenedor**:
  ```bash
  docker start jenkins
  ```
- **Ver logs del contenedor** (para depuración):
  ```bash
  docker logs jenkins
  ```
- **Eliminar el contenedor** (si ya no lo necesitas):
  ```bash
  docker rm jenkins
  ```

## Notas Adicionales

- **Persistencia**: El directorio `~/jenkins_home` asegura que las configuraciones se mantengan aunque el contenedor se detenga o elimine.
- **Puertos**: Verifica que los puertos 8080 y 50000 no estén ocupados por otras aplicaciones.
- **Personalización**: Puedes ajustar el comando `docker run` o usar un archivo `docker-compose.yml` para configuraciones avanzadas.

## Solución de Problemas

Si encuentras problemas, revisa los logs del contenedor con:
```bash
docker logs jenkins
```

Para más ayuda, consulta la [documentación oficial de Jenkins](https://www.jenkins.io/doc/) o la [página de la imagen en Docker Hub](https://hub.docker.com/r/jenkins/jenkins).