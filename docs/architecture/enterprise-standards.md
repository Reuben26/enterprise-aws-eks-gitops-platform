# Enterprise AWS EKS GitOps Platform Standards

## Project Name

Enterprise AWS EKS GitOps Platform

## AWS Region

Primary Region: us-east-1

## Environment Strategy

- dev
- qa
- prod

## Naming Convention

<Project>-<Environment>-<Resource>

Examples:

eks-gitops-dev-vpc
eks-gitops-dev-eks
eks-gitops-dev-ecr
eks-gitops-dev-alb

## Required Tags

Project=Enterprise-EKS-GitOps
Environment=Dev
Owner=Reuben
ManagedBy=Terraform
Purpose=Platform-Learning

## Terraform Structure

platform/terraform
├── modules
└── environments

## GitOps Principle

Git is the single source of truth.

Infrastructure changes are managed through Terraform.
Application deployments are managed through ArgoCD.

Manual changes are prohibited.