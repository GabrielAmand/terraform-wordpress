variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnet_1_id" {
  description = "First private subnet ID"
  type        = string
}

variable "private_subnet_2_id" {
  description = "Second private subnet ID"
  type        = string
}

variable "ec2_security_group_id" {
  description = "Security group ID of the EC2 instance"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}
