# Golden Path Provisioning

### Architecture
<p align="center">
  <img width="641" height="406" alt="Architecture Diagram" src="https://github.com/user-attachments/assets/8fdef157-34fc-4c42-9aec-9783730d7627" />
</p>

---

## Prerequisites
Before deploying, ensure you have the following tools installed and configured:

**AWS CLI** (configured with credentials)
- **kubectl** (for Kubernetes cluster management)
- **Terraform** (v1.5+ recommended)
- **Git** (for cloning repositories)
## Directions

**1. Select your AWS region:**

export AWS_REGION=us-east-1

**2. Copy the Repository**

git clone gold-path

cd golden-path/terraform

**3. How to Run**

terraform init

terraform plan

terraform apply

**4. Deploy Application with Helm:**

cd ../scripts

./deploy.sh

**5. IAM Roles of IRSA, DynamoDB Table, and S3 Bucket**

This deployment includes:

IAM Roles for IRSA (IAM Roles for Service Accounts)

S3 bucket for Terraform remote state

**6. Check All and Examine Pods**
kubectl get pods
kubectl get svc
kubectl get hpa

**7. Application Access**

The application will be available via the ALB URL created in your cluster:

kubectl get svc -n default

**8. Why EKS?**
   
Optimized for microservices & Kubernetes-native workloads
Strong ecosystem: Ingress, External Secrets, IRSA
Workloads are portable and easy to move across environments

**9. Notes**
Ensure your AWS CLI is configured with the correct credentials.
