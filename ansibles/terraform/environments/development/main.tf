terraform {
  required_version = ">= 1.0.0"
  
  backend "s3" {
    # Sesuaikan dengan bucket dan region Anda
    # bucket         = "your-terraform-state-bucket"
    # key            = "development/terraform.tfstate"
    # region         = "ap-southeast-1"
    # dynamodb_table = "terraform-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "development"
      Managed_By  = "terraform"
      Project     = "wadah-infra"
    }
  }
}

# Variables
variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

# Modules will be imported here
# example:
# module "vpc" {
#   source = "../../modules/vpc"
#   # ... module variables
# }
