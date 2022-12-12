provider "aws" {
  region = var.region
}

module "iam" {
  source = "./modules/iam"
}

module "security" {
  source              = "./modules/security"
  name                = var.name
  vpc_id              = var.vpc_id
  ingress_cidr_blocks = var.ingress_cidr_blocks
}

module "emr" {
  source                    = "./modules/emr"
  name                      = "name1"
  release_label             = "release_label1"
  applications              = "applications1"
  subnet_id                 = "subnet_id1"
  key_name                  = "key_name1"
  master_instance_type      = "master_instance_type1"
  master_ebs_size           = "master_ebs_size1"
  core_instance_type        = "core_instance_type1"
  core_instance_count       = "core_instance_count1
  core_ebs_size             = "core_ebs_size1"
  emr_master_security_group = "emr_master_security_group1"
  emr_slave_security_group  = "emr_slave_security_group1"
  emr_ec2_instance_profile  = "emr_ec2_instance_profile1"
  emr_service_role          = "emr_service_role1"
  emr_autoscaling_role      = "emr_autoscaling_role1"
}
