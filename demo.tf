variable "sample" {
     default = "batch56"
}

# output "demo_check" {
#     value = "The batch at present is ${var.sample}"
# }

variable "sample1" {
    default = 100
}

variable "sample2" {
    default = true
}

variable "sample3" {
    default = "Amlan"
}

variable "sample4" {
    default = "ID-225025"
}
output "print" {
    value = "This is ${var.sample3} with ${var.sample4} from ${var.sample} who scored ${var.sample1} marks in ${var.sample2} exams "
}