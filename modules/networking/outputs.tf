output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "private_subnet_1_id" {
  description = "First private subnet ID"
  value       = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  description = "Second private subnet ID"
  value       = aws_subnet.private_2.id
}
