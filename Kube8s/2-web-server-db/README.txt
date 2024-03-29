HELP
====
kubectl create -f db-deploy.yml
kubectl get all -o wide
kubectl create -f phpadmin-npservice-deploy.yml
minikube service phpmyadmin-np-service

# When testing the Phpmyadmin for
Server name: <Name of internal service>

eg:
apiVersion: v1
kind: Service
metadata:
  name: db-internal-service <<<<< ------ <Name of internal service>
spec:
  selector:
    app: myapp-db
  ports:
    - protocol: TCP
      port: 3306
      targetPort: 3306


kubectl delete -f phpadmin-npservice-deploy.yml
kubectl delete -f db-deploy.yml

sed 's/db/db-internal-service/' db-connect.php
