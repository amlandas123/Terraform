# Source of the AMI

data "aws_ami" "ami1" {
  most_recent      = true
  name_regex       = "Devops_batch56"
  owners           = ["512249161831"]
}  