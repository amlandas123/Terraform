resource "aws_instance" "app1" {
  ami           = "ami-06192c6f2b41b7741"   # AMI:This are Arguments which we get before machine starts
  instance_type = "t2.micro"

}  

#Getting output after creating the resource
output "public_ip" {
    value = aws_instance.app1.associate_public_ip_address
}



