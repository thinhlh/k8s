k run nginx --dry-run -o yaml --image nginx --port 80 > 2.yaml
vim 2.yaml
k run --rm -it temp --restart Never --image busybox --command -- wget -qO- 10.244.0.26