terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Provision EC2 Instance directly with hardcoded Mumbai AMI (Ubuntu 24.04 LTS)
resource "aws_instance" "opsguard" {
  ami           = "ami-03f4878755434977f" # Canonical Ubuntu 24.04 LTS in ap-south-1
  instance_type = "t3.small"

  tags = {
    Name        = "OpsGuard-Server"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}