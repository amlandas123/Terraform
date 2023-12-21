
variable "country" {}

output "name_country" {
    value = "The name of the country is ${var.country}"
}