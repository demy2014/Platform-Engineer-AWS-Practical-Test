variable "fallback_lambda_name" {
  description = "Identifier for the fallback Lambda function"
  type        = string
  default     = "gp-fallback-function"
}

variable "fallback_lambda_memory" {
  description = "Allocated memory (in MB)"
  type        = number
  default     = 128
}

variable "fallback_lambda_timeout" {
  description = "Execution timeout in seconds"
  type        = number
  default     = 10
}

variable "lambda_s3_bucket" {
  description = "S3 bucket Lambda package stored"
  type        = string
}

variable "lambda_s3_key" {
  description = "S3 object key pointing"
  type        = string
}

variable "region" {
  description = "AWS region where resources created"
  type        = string
  default     = "us-east-1"
}

variable "resource_tags" {
  description = "Key-value tags to assign AWS resources"
  type        = map(string)
  default     = {
    Environment = "dev"
  }
}
