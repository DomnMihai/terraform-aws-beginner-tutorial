output "main_vpc_cidr" {
  value = aws_vpc.main.cidr_block
  description = "The CIDR block of main VPC"
}
