terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.11.3"
    }
  }
}


provider "vultr" {
  api_key = var.api_key
  retry_limit = 3
}