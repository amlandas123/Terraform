terraform {
  backend "s3" {
    bucket = "terraformstate-devops-batch56"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}
