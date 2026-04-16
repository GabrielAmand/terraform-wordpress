variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "wordpress-exam"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_1_cidr" {
  description = "Private subnet 1 CIDR block"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  description = "Private subnet 2 CIDR block"
  type        = string
  default     = "10.0.3.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "db_name" {
  description = "Wordpress database name"
  type        = string
  default     = "wordpressdb"
}

variable "db_username" {
  description = "Wordpress database username"
  type        = string
  default     = "wpuser"
}

variable "db_password" {
  description = "Wordpress database password"
  type        = string
  sensitive   = true
}

variable "ebs_volume_size" {
  description = "EBS volume size in GB"
  type        = number
  default     = 10
}
