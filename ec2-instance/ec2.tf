resource "aws_instance" "app1" {
  ami           = "ami-0f75a13ad2e340a58"     # AMI:This are Arguments which we get before machine starts
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id] 
  tags = {
    Name = "Devops-Instance"
  }
}  

output "private_dns" {                #IP Address are Attributes which we get post machine starts
    value = aws_instance.app1.private_dns
}

output "instance_sg" {
    value = aws_instance.app1.security_groups
}

resource "aws_security_group" "allow_tls" {
  name        = "b56_allow_tls"
  description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}