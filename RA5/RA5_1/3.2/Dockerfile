# Dockerfile
FROM python:3.10-slim

# Crea directorio de la app
WORKDIR /app

# Copia el código
COPY . /app

# Instala dependencias si las hubiera (agrega requirements.txt si hace falta)
# RUN pip install -r requirements.txt

# Ejecuta los tests por defecto (esto puede cambiar según Jenkinsfile)
CMD ["python3", "-m", "unittest", "test_calculadora.py"]
