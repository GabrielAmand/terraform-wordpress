output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "availability_zone" {
  description = "Availability zone of the EC2 instance"
  value       = aws_instance.web.availability_zone
}

output "security_group_id" {
  description = "Security group ID of the EC2 instance"
  value       = aws_security_group.web_sg.id
}
