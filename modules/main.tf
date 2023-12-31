provider "aws" {}

terraform {
  backend "s3" {
    bucket = "terraformstate-devops-batch56"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ec2_op" {
    source = "/root/Terraform/modules/ec2"
    sg     = module.sg.sg_id
}
# output "pub_output" {
#     value = module.local.public_ip
# }

module "sg_op" {
    source = "/root/Terraform/modules/sg"

}

