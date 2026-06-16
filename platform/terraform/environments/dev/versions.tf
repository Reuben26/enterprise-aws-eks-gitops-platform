terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "enterprise-eks-gitops-dev-terraform-state-398370989042"
    key            = "environments/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "enterprise-eks-gitops-dev-terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}