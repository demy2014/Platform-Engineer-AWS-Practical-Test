README.md
High level Architecture Diagram 
 
Directions: 
1. Configure the all prerequisites that needed and choose where you want to deploy in region of AWS.
Example: us-east-1
2. Copy the Repository 
git clone gold-path 
cd golden-path/terraform 
3. How to run?
terraform init
terraform plan
terraform apply

cd ../scripts
./deploy.sh
4. IAM Roles of IRSA DynamoDB table and S3 bucket for state CloudWatch dashboards
This will use the nginx Hello World software.
The ALB will make it public.

5. Check all and Examine pods: 
kubectl get pods 
kubectl get svc 
kubectl get hpa
6. Why EKS?
Better for microservices & Kubernetes-native workloads
EKS handles microservices scaling smoothly.
Strong ecosystem (Ingress, External Secrets, IRSA)
Workloads move without hassle.

