variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone where the EBS volume will be created"
  type        = string
}

variable "instance_id" {
  description = "EC2 instance ID to attach the volume to"
  type        = string
}

variable "volume_size" {
  description = "Size of the EBS volume in GB"
  type        = number
}
