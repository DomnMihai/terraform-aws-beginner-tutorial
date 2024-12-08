terraform {
  required_version = "= 1.9.7"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "= 5.80.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
  profile = "terraform-tutorial"
  default_tags {
    tags = {
      Creator = "terraform"
    }
  }
}
