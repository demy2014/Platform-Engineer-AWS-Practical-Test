#!/bin/bash
set -e

terraform -chdir=../terraform init
terraform -chdir=../terraform apply -auto-approve
aws eks update-kubeconfig --name gp-cluster --region us-east-1