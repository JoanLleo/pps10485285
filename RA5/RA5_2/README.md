# Práctica: Puesta en Producción Segura con Jenkins

## Introducción

Este repositorio contiene la implementación de un ejercicio práctico centrado en Infraestructura como Código (IaC) utilizando Terraform y Ansible. El objetivo es aprovisionar y configurar una máquina virtual Ubuntu 24.04 en VirtualBox, automatizando la instalación de un servidor web Apache. Las tareas incluyen aprovisionar la máquina virtual con Terraform, realizar actualizaciones del sistema e instalar Apache con Ansible, y configurar un archivo index.html con el contenido "Ansible rocks" para ser mostrado en el servidor web, validado mediante un comando curl. El repositorio incluye todos los archivos de configuración necesarios y una captura de pantalla del proceso de aprovisionamiento, configuración y validación.


---

Incluye también en el repositorio:

- Captura de pantalla con las maquinas funcionando.
- Breve explicación de cada paso realizado.


## Esquema del proyecto
```
RA5_2/
.
├── 3.1
│   ├── README.md
│   ├── Vagrantfile
│   ├── images
│   │   ├── 1 - CuentaCreada.png
│   │   ├── 2 - EmpaquetadoDeVMPersonalizada.png
│   │   ├── 3 - SubidaBoxAVagrantPrivada.png
│   │   ├── MaquinaIniciada.png
│   │   ├── apply.png
│   │   ├── init.png
│   │   └── plan.png
│   └── main.tf
├── 3.2
│   ├── README.md
│   ├── Vagrantfile
│   ├── images
│   │   ├── AccesoWeb.png
│   │   ├── EjecuciónAnsible.png
│   │   └── UpgradeyApache.png
│   ├── inventory.ini
│   └── playbook.yml
├── 3.3
│   ├── README.md
│   ├── Vagrantfile
│   ├── images
│   │   ├── Ejecucion.png
│   │   ├── Resultado.png
│   │   └── Terminal.png
│   ├── inventory.ini
│   └── playbook.yml
└── README.md
```
