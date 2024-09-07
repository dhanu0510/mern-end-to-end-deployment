terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dhanu0510_kubernetes-basket"
    region         = "ca-central-1"
    key            = "kubernetes/terraform.tfstate"
    dynamodb_table = "mern_terraform_lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
