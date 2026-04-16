variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID where the EC2 instance will be deployed"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "db_name" {
  description = "WordPress database name"
  type        = string
}

variable "db_username" {
  description = "WordPress database username"
  type        = string
}

variable "db_password" {
  description = "WordPress database password"
  type        = string
  sensitive   = true
}

variable "db_endpoint" {
  description = "RDS endpoint"
  type        = string
}
