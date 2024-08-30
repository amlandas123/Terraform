resource "aws_instance" "app" {
    ami = "ami-072983368f2a6eab5"
    instance_type = "t2.micro"
    tags = {
    Name = "Devops-Amlan-demo"
  }
}

