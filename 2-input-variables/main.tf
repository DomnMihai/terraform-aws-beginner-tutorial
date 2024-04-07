resource "aws_iam_policy" "policy_string" {
  name        = "policy-string"
  path        = "/terraform-tutorial/"
  description = var.policy_description

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListAllMyBuckets",
        ]
        Resource = "*"
      }
    ]
  })

  tags = {
    Creator = "terraform"
  }
}

resource "aws_iam_policy" "policy_number" {
  count = var.policy_count

  name        = "policy-number-${count.index}"
  path        = "/terraform-tutorial/"
  description = "Policy created with variable number. Index ${count.index + 1}"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListAllMyBuckets",
        ]
        Resource = "*"
      }
    ]
  })

  tags = {
    Creator = "terraform"
  }
}
