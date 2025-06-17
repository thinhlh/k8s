k taint node minikube tier=frontend:NoSchedule
k run nginx --image nginx --dry-run -o yaml > 15.yaml