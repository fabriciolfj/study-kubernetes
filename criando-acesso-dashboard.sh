kubectl create serviceaccount dashboard-user
kubectl create clusterrolebinding dashboard-user --clusterrole=cluster-admin --serviceaccount=default:dashboard-user
kubectl get secrets