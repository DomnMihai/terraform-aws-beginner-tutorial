resource "aws_iam_policy" "policy" {
  name        = "my-first-policy"
  description = "My first created policy ever with terraform"

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
