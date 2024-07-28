terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
  backend "s3" {
    bucket = "zebucket"
    key    = "path/to/my/key"
    region = "eu-west-1"
  }
}

provider "aws" {
  region     = "eu-west-1"
}