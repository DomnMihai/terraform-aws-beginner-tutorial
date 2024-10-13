terraform {
  required_version = "= 1.9.7"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "= 5.71.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}
