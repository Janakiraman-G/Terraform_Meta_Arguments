# Here we are going to define the provider for our Terraform configuration. In this case, we are using the AWS provider to manage our AWS resources.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

