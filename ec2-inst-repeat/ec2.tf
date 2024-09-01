resource "aws_instance" "app" {
    ami = data.aws_ami.ami.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.dasa2024.id]
    tags = {
    Name = "Devops-Amlan-demo"
  }
}

data "aws_ami" "ami" {
  most_recent   = true
  name_regex    = "DevOps-LabImage-Centos-8"
  owners        = ["471112781280"]

}

resource "aws_ebs_volume" "devops-volume" {
  availability_zone = "us-east-1a"
  size              = 50
}

resource "aws_volume_attachment" "devops-volume1" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.devops-volume.id
  instance_id = aws_instance.app.id
}

output "instance_dns" {
    value = aws_instance.app.private_dns
  
}

output "instance_arn" {
    value = aws_instance.app.arn
}



