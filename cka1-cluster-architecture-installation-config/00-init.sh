
kubectl config use-context minikube

kubectl config set-context eng-context \
 --cluster=minikube \
 --namespace=engineering \
 --user=bob

kubectl config view

kubectl apply -f mynamespace.yaml

kubectl apply -f myapp.yaml

