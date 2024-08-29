resource "aws_vpc" "dasa" {
  cidr_block = "172.16.0.0/16"
  

  tags = {
    Name = "dasa-vpc"
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.dasa.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_network_interface" "dasa-network" {
  subnet_id   = aws_subnet.public_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

output "network_interface_id" { 
  value = aws_network_interface.dasa-network.id
}