
# #Variable can be declared in the form of list

# #Variable Listing example
# variable "listing" {
#     default = [
#         "Amlan",
#         "Priya",
#         "Mou",
#         1988,
#         true
#     ]
  
# }

# output "listing_op" {
#     value = "Hi this is ${var.listing[1]} wife of ${var.listing[0]} who was born in the year ${var.listing[3]}"
# }

# #variable mapping. Mapping is mostly used instead of listing
# variable "mapping" {
#     default = {
#         name    = "Amlan Das"
#         batch   = 56
#         food    = true
#         city    = "Bangalore"
#         country =  "India"
#     }
  
# }

# output "mapping_op" {
#     value = "This is ${var.mapping["country"]} and my name is ${var.mapping["name"]} from ${var.mapping["city"]} and my batch is ${var.mapping["batch"]}"
# }

# variable "city" {}
# output "city_op" {
#     value = "I live in ${var.city}"
# }

# variable "state" {}
# output "state_op" {
#     value = "I live in ${var.state}"
# }

# variable "country" {}
# output "country_op" {
#     value = "Iam from ${var.country}"
# }

variable "mother" {}

output "name" {
  value = "My mother name is ${var.mother}"
}
