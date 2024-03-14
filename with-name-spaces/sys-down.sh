kubectl delete -f mongo-db.yaml
kubectl delete -f mongo-express.yaml
kubectl delete -f mongodb-configmap.yaml
kubectl delete -f mongo-internal-service.yaml
kubectl delete -f mongo-secret.yaml
kubectl delete -f mogo-express-external-service.yaml
kubectl get all
kubectl get secret
kubectl get config map