terraform {
  required_version = "= 1.7.1"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "= 5.44.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  access_key = ""
  secret_key = ""
}
