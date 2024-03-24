# Kubernates Learning

## Minikube start
1. minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus=1
2. minikube status
3. minikube stop

## Order of the application
1. Secrets
2. Mongo DB
3. Internal Service
4. Config Maps
5. Web Server
6. External Service

# Get External IP from the Minicube
CMD - minikube service <Service-Name>
![image](https://github.com/ifsemail9/k8s/assets/133851700/f448eeef-be18-4718-b1e3-36c71433f2d0)

# Get External IP from the Minicube [With NAME SPACE]
 minikube service -n ns-apd mongo-express-external-service

# Request Flow
![image](https://github.com/ifsemail9/k8s/assets/133851700/5b7293f8-b572-41c4-86dc-bc723d011269)

# Access Service in another Name space
![image](https://github.com/ifsemail9/k8s/assets/133851700/0e2627ed-476d-49fd-b89c-99345e26524d)

# GITHUB personal access tokens
1. In the upper-right corner of any page, click your **"profile photo"**
2. Then click **"Settings."**
3. In the left sidebar, click **"<> Developer settings."**
4. In the left sidebar, under  **"Personal access tokens"**
5. Click **"Generate new token."**

# Working with GIT Repo
1. git config --global user.email "ifsemail9@gmail.com"
2. git config --global user.name "ifsemail9@gmail.com"
3. git status
4. git add --all
5. git commit -m 'Added bash scripts and updated secret yaml'
6. git remote add origin git@github.com:ifsemail9/k8s.git
7. git push -u -f origin main
8. git log - Give the history of all the commits with commit hashes
9. git pull origin - Update the local PC Copy
 
# Updating a local repository with changes from a GitHub repository
- _either:_    git pull origin master
- _or:_   git pull origin main

# Working with 'Name-Spaces'
- First need to create the name space
- CMD - kubectl get secret -n ns-apd
- Then execute the 'kubectl apply' with config yaml files
- kubectl get all -n ns-apd
- kubectl get service/secret/pod -n ns-apd

# Working with 'kubectl api-resources'
![image](https://github.com/ifsemail9/k8s/assets/133851700/0aaf2eb0-effd-42f6-a035-bd1bb1e29642)
- CMDs:
- kubectl api-resources
- kubectl api-resources --namespaced=true
- kubectl api-resources --namespaced=false


