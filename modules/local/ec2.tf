resource "aws_instance" "app1" {
  ami           = data.aws_ami.ami1.id   # AMI:This are Arguments which we get before machine starts
  instance_type = "t2.micro"

}  
