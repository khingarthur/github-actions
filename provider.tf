terraform {
   backend "s3" {
    bucket = "Practice"
    key    = "infra/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.15.0"
    } 
  }
}

provider "aws" {
  region = "us-east-1"
}