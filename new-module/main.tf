provider "aws" {}

terraform {
  backend "s3" {
    bucket = "terraformstate-devops-batch56"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}

module "vpc_op"{
  source = "./vpc"
}
module "sg_op" {
    source = "./sg"
}
module "ec2_op" {
    source = "./ec2"
    vpc = module.vpc_op.network_interface_id
    sg  = module.sg_op.sg_id
}




