# study-kubernetes

Configurar o uso do docker dentro do minikube:
```
eval $(minikube docker-env)
```

Retirar o uso do docker dentro do minikube:
```
eval $(minikube docker-env -u)
```
Instalando o dashboard do kubernetes
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.4.0/aio/deploy/recommended.yaml
```
Criando permissões para acessar o dashboard do kubernetes
```
kubectl create serviceaccount dashboard-user
kubectl create clusterrolebinding dashboard-user --clusterrole=cluster-admin --serviceaccount=default:dashboard-user
kubectl describe secrets dashboard-user-token-2d4s8
```
Instalando o prometheus e grafana
```
https://github.com/prometheus-operator/kube-prometheus
kubectl create -f manifests/setup
kubectl create -f manifests
obs: grafana chart 315 import
```
Instalando efk
```
git clone https://github.com/kubernetes/kubernetes
cd kubernetes/cluster/addons/
kubectl create ns logging
kubectl apply -f ./fluentd-elasticsearch/es-statefulset.yaml 
kubectl apply -f ./fluentd-elasticsearch/es-service.yaml 
kubectl apply -f ./fluentd-elasticsearch/kibana-deployment.yaml 
kubectl apply -f ./fluentd-elasticsearch/kibana-service.yaml 
kubectl apply -f ./fluentd-elasticsearch/fluentd-es-configmap.yaml 
kubectl apply -f ./fluentd-elasticsearch/fluentd-es-ds.yaml 
```
Instalando jaeger
```
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/service_account.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role.yaml 
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role_binding.yaml 
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/cluster_role.yaml 
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/cluster_role_binding.yaml 
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/operator.yaml
```

Helm
```
helm install ./product-helm/
```