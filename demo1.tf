
variable "country" {}

output "name_country" {
    value = "The name of the country is ${var.country}"
}


variable "environment" {}
output "name_env" {
    value = "name of the environment is ${var.environment}"
}