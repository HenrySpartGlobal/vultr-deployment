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
    profile = "default"
  }
}

provider "aws" {
  region  = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
  profile = "root"
}