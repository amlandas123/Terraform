variable "listing" {
    default = [
        "Amlan",
        "Priya",
        "Mou",
        1988,
        true
    ]
  
}

output "listing_op" {
    value = "Hi this is ${var.listing[1]} wife of ${var.listing[0]} who was born in the year ${var.listing[3]}"
}


