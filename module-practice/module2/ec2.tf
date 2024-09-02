resource "aws_instance" "app-amlan" {
    ami = "ami-08a805de956384d1b"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg123]
    tags = {
      Name = "EC2-using-module"
    }
}

variable "sg123" {}

output "public_ip" {
  value = aws_instance.app-amlan.public_ip
}

# output "vpc_id" {
#     value = aws_vpc.peacock-vpc.id
# }