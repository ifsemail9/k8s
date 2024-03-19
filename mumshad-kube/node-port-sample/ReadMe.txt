Steps
------
Create POD
kubectl create -f np-pod.yml
kubectl get all
Create Service
kubectl create -f np-service.yml 
kubectl get all
kubectl describe service/web-service
kubectl get service
minikube service web-service ### expose monikube port for external browser access