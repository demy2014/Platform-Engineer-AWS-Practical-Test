
# Golden Path Provsioning

##  High-Level Architecture Diagram

<p align="center">
  <img width="641" height="406" alt="Architecture Diagram" src="https://github.com/user-attachments/assets/8fdef157-34fc-4c42-9aec-9783730d7627" />
</p>

---
Directions
1. Configure Prerequisites
Set up all required tools and choose the AWS region for deployment.
```bash
us-east-1
2. Copy the Repository
```bash
git clone gold-path
cd golden-path/terraform
3. How to run?
```bash
terraform init
terraform plan
terraform apply

cd ../scripts
./deploy.sh
4. IAM Roles of IRSA DynamoDB table and S3 bucket for state CloudWatch dashboards
```bash
This will use the nginx Hello World software.
The ALB will make it public.
5. Check all and Examine pods:
```bash
kubectl get pods 
kubectl get svc 
kubectl get hpa
7. Why EKS?
```bash
Better for microservices & Kubernetes-native workloads
EKS handles microservices scaling smoothly.
Strong ecosystem (Ingress, External Secrets, IRSA)
Workloads move without hassle.

