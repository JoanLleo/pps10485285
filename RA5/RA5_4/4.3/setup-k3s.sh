#!/bin/bash

set -e

echo "[1/5] Instalando K3s..."
curl -sfL https://get.k3s.io | sh -

echo "[2/5] Configurando KUBECONFIG..."
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
if ! grep -q KUBECONFIG ~/.bashrc; then
    echo "export KUBECONFIG=/etc/rancher/k3s/k3s.yaml" >> ~/.bashrc
fi

echo "[3/5] Instalando kubectl..."
if ! command -v kubectl &> /dev/null; then
    curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/
fi

echo "[4/5] Instalando k9s..."
if ! command -v k9s &> /dev/null; then
    curl -s https://api.github.com/repos/derailed/k9s/releases/latest \
    | grep browser_download_url \
    | grep Linux_x86_64.tar.gz \
    | cut -d '"' -f 4 \
    | wget -qi - && \
    tar -xzf k9s_Linux_x86_64.tar.gz && \
    sudo mv k9s /usr/local/bin && \
    rm k9s_Linux_x86_64.tar.gz
fi

echo "[5/5] Aplicando manifiestos de Kubernetes..."
kubectl apply -f k8s/01-namespace.yaml
kubectl apply -f k8s/02-web-deployment.yaml
kubectl apply -f k8s/03-redis-deployment.yaml
kubectl apply -f k8s/04-ingress.yaml

echo "✅ Todo listo. Puedes validar con 'k9s'."
