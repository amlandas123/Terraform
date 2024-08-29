resource "aws_instance" "app1" {
  count = 2
  ami           = "ami-06192c6f2b41b7741"   # AMI:This are Arguments which we get before machine starts
  instance_type = "t2.micro"
  
  network_interface {
    network_interface_id = var.vpc
    device_index         = 0
  }

  tags = {
    Name = "Amlan-instance-${count.index +1}"
  }

}  

variable "sg" {}
#Getting output after creating the resource.  Info that needs to be shared has to declare through output
# output "public_ip" {
#     value = aws_instance.app1.public_ip
# }
variable "vpc" {}