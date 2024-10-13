locals {
  policy_description = "Description came from locals"
  policy_effect = var.allow_effect == true ? "Allow" : "Deny"
}

locals {
  vpc_setup = {
    dev = {
      vpc_cidr = "10.10.0.0/16"
      subnets = {
        public_1_1a = {
          name = "public-1-1a"
          cidr = "10.10.1.0/24"
          availability_zone = "eu-north-1a"
          auto_assign_ip = true
        }
        public_1_1c = {
          name = "public-1-1c"
          cidr = "10.10.21.0/24"
          availability_zone = "eu-north-1c"
          auto_assign_ip = true
        }
      }
    }
    stg = {
      vpc_cidr = "10.100.0.0/16"
      subnets = {
        public_1_1a = {
          name = "public-1-1a"
          cidr = "10.100.1.0/24"
          availability_zone = "eu-north-1a"
          auto_assign_ip = true
        }
        public_1_1b = {
          name = "public-1-1b"
          cidr = "10.100.11.0/24"
          availability_zone = "eu-north-1b"
          auto_assign_ip = true
        }
        private_1_1b = {
          name = "private-1-1b"
          cidr = "10.100.111.0/24"
          availability_zone = "eu-north-1b"
        }
        private_2_1b = {
          name = "private-2-1b"
          cidr = "10.100.112.0/24"
          availability_zone = "eu-north-1b"
        }
        private_short_1_1b = {
          name = "private-short-1-1b"
          cidr = "10.100.119.64/26"
          availability_zone = "eu-north-1b"
        }
      }
    }
  }
}
