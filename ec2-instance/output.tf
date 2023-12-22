
output "private_dns" {                #IP Address are Attributes which we get post machine starts
    value = aws_instance.app1.private_dns
}

output "instance_sg" {
    value = aws_instance.app1.security_groups
}