output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_id" {
  value = module.networking.public_subnet_id
}

output "private_subnet_1_id" {
  value = module.networking.private_subnet_1_id
}

output "private_subnet_2_id" {
  value = module.networking.private_subnet_2_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "ec2_availability_zone" {
  value = module.ec2.availability_zone
}

output "ec2_security_group_id" {
  value = module.ec2.security_group_id
}

output "rds_instance_id" {
  value = module.rds.db_instance_id
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "rds_security_group_id" {
  value = module.rds.db_security_group_id
}

output "ebs_volume_id" {
  value = module.ebs.volume_id
}
