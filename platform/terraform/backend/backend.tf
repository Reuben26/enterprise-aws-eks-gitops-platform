terraform {
  backend "s3" {
    bucket         = "enterprise-eks-gitops-dev-terraform-state-398370989042"
    key            = "backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "enterprise-eks-gitops-dev-terraform-locks"
    encrypt        = true
  }
}