#!/bin/bash

# This script is used to install Argo CD on a K8s cluster using Helm.
# Author Akshat Verma
# Date: 4th Nov 25
# Version: 1.0

# Check Helm is installed or not
if command -v helm > /dev/null; then
    echo "Helm is already installed."
else
    echo "Installing Helm..."
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
fi

# Adding a repository
helm repo add argo https://argoproj.github.io/argo-helm

# updating the repo
helm repo update

# installing Argo CD helm chart
helm install argocd argo/argo-cd --namespace argocd --create-namespace

# Running on port 8081
# kubectl port-forward svc/argocd-server -n argocd 8081:443