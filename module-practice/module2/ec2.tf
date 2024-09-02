resource "aws_instance" "app-amlan" {
    ami = "ami-08a805de956384d1b"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg]
    tags = {
      Name = "EC2-using-module"
    }
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> /home/centos/private_ips.txt"
}
}
variable "sg" {}

output "public_ip" {
  value = aws_instance.app-amlan.public_ip
}

# output "vpc_id" {
#     value = aws_vpc.peacock-vpc.id
# }