variable "sample" {
     default = "batch56"
}

# output "demo" {
#      value = var.sample
# }

output "batch_check"" {
    output = "Current batch number is ${var.sample}"
}