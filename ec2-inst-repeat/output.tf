output "instance_dns" {
    value = aws_instance.app.private_dns
  
}

output "instance_arn" {
    value = aws_instance.app.arn
}