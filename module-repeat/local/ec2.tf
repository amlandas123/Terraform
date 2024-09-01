resource "aws_instance" "app-amlan" {
  ami = "ami-08a805de956384d1b"
  instance_type = "t2.micro"
}