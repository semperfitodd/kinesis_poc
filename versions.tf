provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Owner       = "Todd"
      Project     = "kinesis_poc"
      Provisioner = "Terraform"
    }
  }
}

terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30"
    }
  }
}