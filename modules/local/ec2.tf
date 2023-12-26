resource "aws_instance" "app1" {
  ami           = "ami-06192c6f2b41b7741"   # AMI:This are Arguments which we get before machine starts
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg]

}  

variable "sg" {}
#Getting output after creating the resource.  Info that needs to be shared has to declare through output
output "public_ip" {
    value = aws_instance.app1.public_ip
}



