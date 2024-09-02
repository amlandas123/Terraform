
#this is a root module where you want to run the command
module "ec2" {
  source = "./module2"
  sg = module.sg.sg_id  
}

module "sg" {
  source = "./module1"
}
#fetching values from backend module
output "public_ip" {
  value = module.ec2.public_ip
}

# # output "vpc_id" {
# #   value = module.local-module.vpc_id
  
# # }
