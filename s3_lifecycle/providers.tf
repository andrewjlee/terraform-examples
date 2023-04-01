terraform {
backend "s3" {
  bucket = "ajl-terraform-state"
  key    = "s3/terraform.tfstate"
  region = "us-east-1"
}
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}