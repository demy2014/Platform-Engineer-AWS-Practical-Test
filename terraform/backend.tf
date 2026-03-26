  terraform {
  backend "s3" {
  bucket = var.bucket
  key= "eks/terraform.tfstate"
  region = var.region
  dynamodb_table = var.dynamodb_table
  encrypt = true
 }
}
