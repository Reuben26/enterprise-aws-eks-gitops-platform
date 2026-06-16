variable "project_name" {
  description = "Project name used for naming ECR repositories."
  type        = string
}

variable "environment" {
  description = "Deployment environment such as dev, qa, or prod."
  type        = string
}

variable "repositories" {
  description = "List of ECR repositories to create."
  type        = list(string)
}

variable "tags" {
  description = "Common tags applied to ECR resources."
  type        = map(string)
}