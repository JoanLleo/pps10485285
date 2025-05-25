
# RA5_4 - Seguridad en despliegue de software con Kubernetes, K3s y K9s

Este repositorio contiene la resolución de la práctica RA5.4 del módulo de Ciberseguridad en entornos TI, centrada en la implantación de sistemas seguros de despliegue de software mediante herramientas de orquestación y monitoreo como **K3s** y **K9s**.

---

## 📌 Objetivos

1. Instalar, configurar y validar un clúster **K3s** en modo **Single Node**.
2. Desplegar un servicio **Nginx** con 2 réplicas.
3. Instalar y validar **K9s** para la gestión del clúster.
4. Repetir el proceso en modo **High Availability (HA)** con K3s.
5. Desplegar y validar un servicio basado en **docker-compose** con K3s + K9s.

---

## 🧰 Tecnologías

- [K3s](https://k3s.io/): distribución ligera de Kubernetes.
- [K9s](https://k9scli.io/): herramienta de monitorización en terminal.
- [kubectl](https://kubernetes.io/docs/reference/kubectl/): CLI para Kubernetes.

---

## 🚀 Actividades realizadas

### 1. K3s - Single Node
- Instalación y configuración de K3s en un único nodo.
- Despliegue de un servicio Nginx con 2 réplicas.
- Validación mediante `kubectl` y **K9s**.

### 2. K3s - Alta Disponibilidad (HA)
- Instalación y configuración de un clúster HA usando etcd embebido.
- Despliegue del mismo servicio Nginx con 2 réplicas.
- Monitorización con K9s.

### 3. Docker Compose en K3s
- Despliegue y validación en K3s de una aplicación basada en el `docker-compose` proporcionado en el siguiente enlace:
  - [Balanceo de carga](https://aulasoftwarelibre.github.io/taller-de-docker/dockerfile/#balanceo-de-carga)

---

## 📂 Estructura del repositorio

```bash
├── 4.1
│   ├── README.md
│   └── images
│       ├── 1.png
│       ├── 10.png
│       ├── 2.png
│       ├── 3.png
│       ├── 4.png
│       ├── 5.png
│       ├── 6.png
│       ├── 7.png
│       ├── 8.png
│       └── 9.png
├── 4.2
│   ├── README.md
│   └── images
│       ├── 0.png
│       ├── 1.png
│       ├── 10.png
│       ├── 11.png
│       ├── 2.png
│       ├── 3.png
│       ├── 4.png
│       ├── 5.png
│       ├── 6.png
│       ├── 7.png
│       ├── 8.png
│       └── 9.png
├── 4.3
│   ├── README.md
│   ├── images
│   │   ├── 0.png
│   │   ├── 1.png
│   │   └── 2.png
│   ├── k8s
│   │   ├── 01-namespace.yaml
│   │   ├── 02-web-deployment.yaml
│   │   ├── 03-redis-deployment.yaml
│   │   └── 04-ingress.yaml
│   └── setup-k3s.sh
└── README.md
```

---

## 📚 Bibliografía

- Kubernetes: https://kubernetes.io/es/
- K3s: https://k3s.io/
- K9s: https://k9scli.io/

---

## ✅ Resultado de aprendizaje

Esta práctica permite al estudiante:
- Aplicar principios de seguridad en la automatización del despliegue de servicios.
- Utilizar herramientas profesionales como Kubernetes, K3s y K9s.
- Implementar arquitecturas escalables y seguras.

---
