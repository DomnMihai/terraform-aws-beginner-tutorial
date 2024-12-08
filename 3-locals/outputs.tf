output "main_vpc_cidr" {
  value = aws_vpc.main.cidr_block
  description = "The CIDR block of main VPC"
}

output "policy_string_id" {
  value = aws_iam_policy.policy_string.policy_id
  description = "Policy ID of IAM Policy 'policy-string'"
  sensitive = true
}
