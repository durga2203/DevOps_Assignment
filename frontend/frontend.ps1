docker login --username=${USERNAME} --password=${PASSWORD}
docker build -t angular-frontend .
docker tag angular-frontend ${USERNAME}/angular-frontend
docker push ${USERNAME}/angular-frontend
kubectl create -f deployment.yaml
kubectl create -f service.yaml