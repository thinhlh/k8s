k run busybox --image busybox --dry-run -o yaml -- "/bin/sh" -c "echo hello;sleep 3600" > 1.yaml
vi 1.yaml
k exec -it busybox busybox2 -- ls