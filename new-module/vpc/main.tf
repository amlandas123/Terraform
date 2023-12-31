resource "aws_vpc" "adas" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

output "vpc_id" {
  value = aws_vpc.adas
}