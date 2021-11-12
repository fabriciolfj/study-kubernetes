kubectl create ns monitoring

helm repo add bitnami https://charts.bitnami.com/bitnami

helm install my-release bitnami/kube-prometheus --namespace monitoring --set prometheus.prometheusSpec.serviceMonitorNamespaceSelector.any=true