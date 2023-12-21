
variable "country" {}

output "name of the country" {
    value = "The name of the country is ${var.country}"
}