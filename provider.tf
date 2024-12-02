terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "ach-tf-provisioners"
    key    = "tfvars"
    region = "us-east-1"
    dynamodb_table = "ach-provisioners"
  }
}

provider "aws" {
  region = "us-east-1"
}