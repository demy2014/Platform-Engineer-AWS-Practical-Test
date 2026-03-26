module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.7.0"  

  name  = "gp-vpc"
  cidr  = "10.10.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.10.1.0/24", "10.10.2.0/24"]
  public_subnets  = ["10.10.101.0/24", "10.10.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
}
