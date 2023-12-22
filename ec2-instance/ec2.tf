resource "aws_instance" "app1" {
  ami           = "ami-0f75a13ad2e340a58"     # AMI:This are Arguments which we get pre
  instance_type = "t3.micro"

  tags = {
    Name = "Devops-Instance"
  }
}  

output "private_dns" {                #IP Address are Attributes which gives post output
    value = aws_instance.app1.private_dns
}

output "instance_arn" {
    value = aws_instance.app1.arn
}