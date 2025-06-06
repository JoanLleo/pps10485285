echo "✅ El clúster está listo."
#!/bin/bash

set -e

echo "[1/6] Instalando K3s..."
curl -sfL https://get.k3s.io | sh -

echo "[2/6] Configurando KUBECONFIG..."
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER:$(id -gn) ~/.kube/config

echo "[3/6] Instalando kubectl (ya incluido con K3s)..."
# No se requiere instalar kubectl manualmente, K3s ya lo instala.

echo "[4/6] Instalando k9s..."
curl -sS https://webinstall.dev/k9s | bash
source ~/.config/envman/PATH.env || true

echo "[5/6] Esperando a que el clúster esté listo..."
until kubectl get nodes &> /dev/null; do
  echo "⏳ Esperando a que el API de Kubernetes responda..."
  sleep 3
done

echo "[6/6] Aplicando manifiestos de Kubernetes..."
kubectl apply -f k8s/01-namespace.yaml
kubectl apply -f k8s/02-web-deployment.yaml
kubectl apply -f k8s/03-redis-deployment.yaml
kubectl apply -f k8s/04-ingress.yaml

echo "✅ Todo listo. Puedes ejecutar 'k9s' para visualizar el clúster."

