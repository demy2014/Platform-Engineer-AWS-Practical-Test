output "cluster_name" {
  description = "Cluster"
  value       = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  description = "API Server Endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_arn" {
  description = "Cluster ARN"
  value       = aws_eks_cluster.main.arn
}

output "node_group_name" {
  description = "Node Group"
  value       = aws_eks_node_group.main.node_group_name
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"
  value       = aws_subnet.private[*].id
}

output "s3_bucket_name" {
  description = "Bucket Name"
  value       = aws_s3_bucket.main.bucket
}

output "dynamodb_table_name" {
  description = "DynamoDB Table Name"
  value       = aws_dynamodb_table.locks.name
}

output "role_arn" {
  description = "ARN of the IAM Role used for IRSA in the EKS cluster"
  value       = aws_iam_role.irsa.arn
}
