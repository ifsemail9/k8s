kubectl apply -f mongo-secret.yaml
sleep 5
kubectl apply -f mongo-db.yaml
sleep 5
kubectl apply -f mongo-internal-service.yaml
sleep 5
kubectl apply -f mongodb-configmap.yaml
sleep 5
kubectl apply -f mongo-express.yaml
sleep 5
kubectl apply -f mogo-express-external-service.yaml
sleep 5
kubectl get all -n ns-apd
kubectl get secret -n ns-apd
kubectl get configmap -n ns-apd
