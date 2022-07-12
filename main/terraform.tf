terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.21.0"
    }
  }
  backend "s3" {
    bucket  = "henrykoleoso-tf-bucket"
    key     = "terraform-states/terraform.tfstate"
    region  = "eu-west-2"
  }
}

provider "aws" {
  region  = "eu-west-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  profile = "root"
}