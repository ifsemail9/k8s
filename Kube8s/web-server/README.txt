minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus=1
minikube status

kubectl create -f pod-srv.yml

kubectl get all
minikube service web-service

kubectl delete -f pod-srv.yml
kubectl get all
nano pod-srv.yml


kubectl describe pod/app-pod

kubectl logs app-pod
minikube service web-service

