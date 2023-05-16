
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
/*
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.aws_subnet.private_subnets
}
*/

output "name" {
  description = "The name of the VPC specified as argument to this module"
  value       = var.name
}

output "region" {
  description = "AWS region"
  value       = var.region
}