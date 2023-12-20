variable "sample" {
     default = "batch56"
}

# output "demo" {
#      value = var.sample
# }

output "batch_check"" {
    batch = "Current batch number is ${var.sample}"
}