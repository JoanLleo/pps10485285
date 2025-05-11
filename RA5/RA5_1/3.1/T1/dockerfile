# Usa la imagen oficial de Jenkins LTS como base
FROM jenkins/jenkins:lts

USER root

# Instala Python 3 y pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    apt-get clean

# Verifica versiones instaladas
RUN python3 --version && pip3 --version

# Cambia el usuario de nuevo a jenkins
USER jenkins
