FROM debian:latest

# Actualizamos paquetes e instalamos Apache y OpenSSL
RUN apt update && apt install -y apache2 openssl libapache2-mod-security2 && rm -rf /var/lib/apt/lists/*

# Deshabilitar módulo autoindex
RUN a2dismod -f autoindex

# Habilitar módulos headers, ssl y security2 
RUN a2enmod headers ssl security2

# Crear directorio para certificados SSL
RUN mkdir -p /etc/apache2/ssl

# Crear directorio que aloja pagina web
RUN mkdir /var/www/html/p1/

#Copiar la pagina web a visualizar
COPY html/index.html /var/www/html/p1/index.html

# Generar un certificado autofirmado para HTTPS
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/apache2/ssl/apache.key \
    -out /etc/apache2/ssl/apache.crt \
    -subj "/C=ES/ST=Comunidad Valenciana/L=Castellon/O=IES El Caminas/OU=Ciberseguridad/CN=localhost"

# Copiar configuración SSL desde el contexto del Dockerfile
COPY ssl/configP1-ssl.conf /etc/apache2/sites-available/configP1-ssl.conf

# Quitamos cabecera del servidor 
RUN echo "ServerTokens ProductOnly" >> /etc/apache2/apache2.conf && echo "ServerSignature Off" >> /etc/apache2/apache2.conf

# Habilitar configuración SSL
RUN a2ensite configP1-ssl

#COPIAR ARCHIVO POST EN DIRECTORIO ROOT DOCKER 
#https://github.com/victorponz/Ciberseguridad-PePS/blob/master/php/validacion/post.php
COPY html/post.php /var/www/html/p1/post.php

#COPIAR ARCHIVO DE SEGURIDAD PARA PODER USARLO
RUN cp etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf

# Exponer el puerto 443 para HTTPS
EXPOSE 443

# Iniciar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]
