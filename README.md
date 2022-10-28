# How to install AWS EKS cluster using terrafrom and then deploy following things:
* Prometheus, Grafana, and loki
* Deploy Nginx deployment
* Send access log of nginx to loki
* Send http metrics requests to prometheus

## Getting Started

### Dependencies
* AWS CLI
* terraform
* helm


### Installing
Clone given repositroy and navigate to the directory
```
cd <repo>
```

Run given command
```
terraform init
```
```
terraform plan
```
```
terraform apply --auto-approve
```

Eks cluster will be deploying in the AWS account. it takes approx 10-20 minutes.

```
aws eks update-kubeconfig --name <cluster-name> --region <region-name>
```

Adding the Official Grafana Helm Repo 
```
helm repo add grafana https://grafana.github.io/helm-charts
```

Update the helm chart 
```
helm repo update
```

Install helm chart with the following Stack enabled ( Loki, Promtail, Grafana, Prometheus )
```
helm upgrade --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false
```

```
kubectl create -f k8s/nginx-deployment.yaml
```

```
kubectl get svc 
```

Change the service type to LoadBalancer from ClusterIP
```
kubectl edit svc loki-grafana 
```
