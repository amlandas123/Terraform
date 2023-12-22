resource "aws_instance" "app1" {
  ami           = "ami-0f75a13ad2e340a58"     # AMI:This are Arguments which we get before machine starts
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.dasa2024.id] 
  tags = {
    Name = "Devops-Instance"
  }
}  



