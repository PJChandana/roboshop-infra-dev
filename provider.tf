terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "awsaiops-remote-state"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "awsaiops-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}