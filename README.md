# How to install AWS EKS cluster using terrafrom and then deploy following things:
* Prometheus, Grafana, and loki
* Deploy Nginx deployment
* Send access log of nginx to loki
* Send http metrics requests to prometheus

## Getting Started

### Dependencies
* AWS CLI
* terraform


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

```
kubectl create -f k8s/nginx-deployment.yaml
```

```
kubectl get all 
```
