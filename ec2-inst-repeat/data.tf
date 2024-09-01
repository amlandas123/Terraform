data "aws_ami" "ami" {
  most_recent = true

  owners = ["471112781280"]

  filter {
    name   = "name"
    values = ["amlan-image"]
  }
}