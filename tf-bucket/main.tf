terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  region     = "eu-west-1"
}

resource "aws_s3_bucket" "ze_bucket" {
  bucket = "ze_bucket"

  tags = {
    Environment = "dev"
  }
}