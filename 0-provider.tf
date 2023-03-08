provider "aws" {
  region = var.aws_region #"eu-central-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30.0"
    }
  }

  required_version = "~> 1.0"
}
