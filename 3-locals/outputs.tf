output "main_vpc_cidr" {
  value = aws_vpc.main.cidr_block
  description = "The CIDR block of main VPC"
}

output "policy_string_id" {
  value = aws_iam_policy.policy_string.policy_id
  description = "Policy ID of IAM Policy 'policy-string'"
  sensitive = true
}

output "main_subnets_ids" {
  value = values(aws_subnet.main)[*].id
  description = "List of subnets inside main VPC"

  # All subnets' ids must start with -0
  precondition {
    condition     = length([ for key, value in aws_subnet.main : value.id if !startswith(value.id, "subnet-0") ]) == 0
    error_message = "At least one subnet id doesn't start with 'subnet-0'"
  }
}
