terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.11.3"
    }
  }
  backend "s3" {
    bucket  = "henrykoleoso-tf-bucket"
    key     = "terraform-states-vultr-module/terraform.tfstate"
    region  = "eu-west-2"
    profile = "default"
  }
}


provider "vultr" {
  api_key = var.api_key
  retry_limit = 3
}