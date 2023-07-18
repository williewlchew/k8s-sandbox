
# Create a deployment with a test container image that includes a webserver
kubectl create deployment hello-node --image=registry.k8s.io/e2e-test-images/agnhost:2.39 -- /agnhost netexec --http-port=8080

sleep 3

kubectl get deployments

kubectl get pods

kubectl get events

kubectl config view


