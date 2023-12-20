variable "sample"{}

variable "batch"{
    default = "batch56"
}

output "sample" {
    value = var.batch
}

