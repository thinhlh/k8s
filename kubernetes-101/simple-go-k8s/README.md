# Kubernetes 101

# Notion Docs for learning

- https://www.notion.so/Kubernetes-789610a7d9a34f90be623f410998caea?pvs=4

# Prerequisites

1. Docker installed
2. Kubectl CLI installed to interact with Kubernetes API
3. Minikube installed (with VM installed before)

# Start

1. Run minikube as a local node

   ```
   minikube start

   # Check if minikube is on & attached to Kubernetes
   kubectl get nodes
   ```

2. Build server docker image
   ```
   make dockerize
   ```
3. Push image to minikube registry
   ```
   make publish
   ```
4. Spin up deployment
   ```
   k apply -f ./deployment/namespace.yaml
   k apply -f ./deployment
   ```

# Tasks

- [x] Backend deployment
  - [ ] Backend port ARGS
  - [ ] Backend logs
- [ ] Backend service
- [x] Database deployment
- [ ] Database service
  - [ ] Database logs
  - [ ] Database volumes (PV & PVC)
- [ ] Netpol
- [ ] Helm
