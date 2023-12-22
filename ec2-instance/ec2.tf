resource "aws_instance" "app1" {
  ami           = data.aws_ami.ami1.id   # AMI:This are Arguments which we get before machine starts
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.dasa2024.id] 
  tags = {
    Name = "Devops-Instance"
  }
}  

data "aws_ami" "ami1" {
  most_recent      = true
  owners           = ["512249161831"]
}  


