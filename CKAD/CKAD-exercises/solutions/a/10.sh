k get pod -n mynamespace -o wide # get IP
k run temp --rm -it --restart Never --image=busybox --command -- wget -qO- http://10.244.0.16/