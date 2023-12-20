variable "sample" {
     default = "batch56"
}

# output "demo" {
#      value = var.sample
# }

output "batch_check"" {
    value = "Current batch number is ${var.sample}"
}