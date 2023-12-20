variable "sample" {
     default = "batch56"
}

output "demo_check" {
    value = "The batch at present is ${var.sample}"
}
