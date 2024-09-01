resource "aws_vpc" "peacock-vpc" {
    cidr_block = "192.168.0.0/24"
    tags = {
      Name = "dasa2024-vpc"
    }
}