resource "aws_iam_policy" "policy_string" {
  name        = "policy-string"
  path        = "/terraform-tutorial/"
  description = local.policy_description

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = local.policy_effect
        Action = [
          "s3:ListAllMyBuckets"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_vpc" "main" {
  cidr_block = local.vpc_setup[var.environment].vpc_cidr

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  for_each = local.vpc_setup[var.environment].subnets

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = lookup(each.value, "auto_assign_ip", false)

  tags = {
    Name = each.value.name
  }
}
