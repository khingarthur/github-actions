terraform {
    backend "s3" {
        bucket = "infra/tfstate"
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
  alias  = "first"
}