output "public_ip" {
  description = "IP of EC2 instance"
  value = aws_instance.nieljins.public_ip
}

output "region" {
  description = "AWS region"
  value       = var.region
}

