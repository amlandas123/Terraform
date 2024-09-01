resource "aws_instance" "app-amlan" {
  ami = "ami-08a805de956384d1b"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.app-amlan.public_ip
}