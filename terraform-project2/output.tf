output "public_dns" {
  value = aws_instance.Instances.public_dns
}

output "public_ip" {
  value = aws_instance.Instances.public_ip
}

output "endpoint" {
  value = aws_db_instance.database.endpoint
}
