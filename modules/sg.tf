resource "aws_security_group" "dasa2024" {
  name        = "dasa2024_allow_tls"
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
    Name = "dasa2024"
  }
}

output "sg_id" {
    value = aws_security_group.dasa2024.id
}