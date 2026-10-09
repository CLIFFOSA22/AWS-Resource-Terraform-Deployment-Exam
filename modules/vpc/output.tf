
output "vpc_id" {
  description = "ID of the custom VPC"
  value       = aws_vpc.customer_vpc_Cliff.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value = [
    aws_subnet.Public-Subnet.id
  ]
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value = [
    aws_subnet.Private_Subnet.id
  ]
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.custom_igw.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.PublicRT.id
}
