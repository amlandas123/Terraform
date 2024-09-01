provider "aws" {}

terraform {
  backend "s3" {
    bucket = "terraformstate-devops-batch56"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}
#root module where you want to run the command
module "local-module" {
    source = "./local"
}

output "public_ip" {
  value = module.local-module.public_ip
}

