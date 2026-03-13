module "vpc" {  
  source          = "../modules/vpc"
  project_name    = var.project_name
  region          = var.region
  vpc_cidr_block  = var.vpc_cidr_block
  pub_sub_1a_cidr = var.pub_sub_1a_cidr
  pri_sub_3a_cidr = var.pri_sub_3a_cidr
}

module "sg" {
  source       = "../modules/sg"
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id

  # By default allows SSH from anywhere; override if needed
  public_ssh_cidr = "0.0.0.0/0"
}

module "ec2" {
  source            = "../modules/ec2"
  project_name      = var.project_name
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
  public_ec2_sg_id  = module.sg.public_ec2_sg_id
  private_ec2_sg_id = module.sg.private_ec2_sg_id
  key_name          = var.key_name
}
