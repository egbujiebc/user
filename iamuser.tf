terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "bce" {
  name = "brian"
  path = "/system/"

  tags = {
    tag-key = "brian"
  }
}



