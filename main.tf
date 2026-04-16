terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  state = "available"
}

module "networking" {
  source = "./modules/networking"

  project_name          = var.project_name
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
  az_1                  = data.aws_availability_zones.available.names[0]
  az_2                  = data.aws_availability_zones.available.names[1]
}

module "ec2" {
  source = "./modules/ec2"

  project_name     = var.project_name
  vpc_id           = module.networking.vpc_id
  public_subnet_id = module.networking.public_subnet_id
  instance_type    = var.instance_type

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  db_endpoint = module.rds.db_endpoint
}

module "rds" {
  source = "./modules/rds"

  project_name          = var.project_name
  vpc_id                = module.networking.vpc_id
  private_subnet_1_id   = module.networking.private_subnet_1_id
  private_subnet_2_id   = module.networking.private_subnet_2_id
  ec2_security_group_id = module.ec2.security_group_id
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
}

module "ebs" {
  source = "./modules/ebs"

  project_name      = var.project_name
  availability_zone = module.ec2.availability_zone
  instance_id       = module.ec2.instance_id
  volume_size       = var.ebs_volume_size
}
