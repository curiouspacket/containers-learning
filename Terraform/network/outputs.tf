
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private-subnets[*].id
}

/*
output "azs" {
  description = "A list of availability zones specified as argument to this module"
  value       = var.azs
}
*/
output "arn" {
  description = "The name of the VPC specified as argument to this module"
  value       = aws_vpc.main.arn
}