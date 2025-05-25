# Web + Redis on K3s with Traefik

## 📁 Estructura del proyecto

```bash
project-root/
├── k8s/
│   ├── 01-namespace.yaml
│   ├── 02-web-deployment.yaml
│   ├── 03-redis-deployment.yaml
│   ├── 04-ingress.yaml
├── Dockerfile
├── .dockerignore
├── .gitignore
├── setup-k3s.sh
├── README.md
```

## 🧪 Requisitos

- Tener Linux (Ubuntu/Debian/CentOS)
- Acceso a terminal con permisos sudo

## 🚀 Instalación automática

```bash
chmod +x setup-k3s.sh
./setup-k3s.sh
```

## 🔍 Validación con K9s

```bash
k9s
:ns webapp
```

## 🌐 Acceso

- Añadir a tu archivo `/etc/hosts`:
```bash
127.0.0.1 localhost
```
- Accede a: http://localhost

## 🧹 Limpieza
```bash
kubectl delete namespace webapp
```

## 📄 Licencia
MIT
