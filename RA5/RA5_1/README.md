# Práctica: Puesta en Producción Segura con Jenkins

## Introducción

En esta práctica se exploran los conceptos fundamentales y la implementación práctica de CI/CD (Integración y Entrega/Despliegue Continuos) en el contexto de la ciberseguridad y el despliegue seguro de software. Utilizaremos **Jenkins**, una de las herramientas más populares de automatización de software, para construir pipelines que automaticen el proceso de compilación, prueba y despliegue de aplicaciones.

El enfoque se centra en crear un entorno de despliegue automatizado y seguro utilizando Jenkins y Docker. Se trabaja con **Jenkinsfile** para definir los pipelines como código, lo cual permite una mejor trazabilidad, control de versiones y reproducibilidad del proceso de despliegue. Además, se incluye la creación de contenedores Docker y la orquestación mediante `docker-compose`, integrando todo dentro de una pipeline automatizada.

Esta actividad forma parte del módulo de **Ciberseguridad en entornos de las tecnologías de la información**, concretamente en la unidad enfocada en la **implantación de sistemas seguros de despliegue de software**, y busca desarrollar competencias clave en automatización, integración y entrega continua con una perspectiva de seguridad.

---

Incluye también en el repositorio:

- Captura de pantalla con las pipelines funcionando.
- Breve explicación de cada paso configurado en el Jenkinsfile.


## Esquema del proyecto
```
RA5_1/
.
├── 3.1
│   ├── T1
│   │   ├── README.md
│   │   ├── calculadora.py
│   │   ├── images
│   │   │   ├── CalcyTest.png
│   │   │   ├── cambio.png
│   │   │   └── fallo.png
│   │   └── test_calculator.py
│   └── T2
│       ├── Jenkinsfile
│       ├── README.md
│       ├── dockerfile
│       └── images
│           ├── code.png
│           ├── container.png
│           ├── exec.png
│           ├── failure1.png
│           ├── failure2.png
│           ├── img.png
│           ├── logs.txt
│           ├── logs1.png
│           ├── logs2.png
│           └── persistencia.png
├── 3.2
│   ├── Dockerfile
│   ├── Jenkinsfile.docker
│   ├── README.md
│   ├── assets
│   │   └── AutomaticoJenkins.txt
│   ├── calculadora.py
│   ├── docker-compose.yml
│   ├── images
│   │   ├── pipe.png
│   │   ├── pipeline.png
│   │   └── resultados.png
│   └── test_calculator.py
└── README.md
```
