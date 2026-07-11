output "bastion_public_ip" {
  description = "Public IP of the Bastion Host"
  value       = aws_instance.bastion.public_ip
}

output "private_instance_ip" {
  description = "Private IP of the Private EC2 Instance"
  value       = aws_instance.private.private_ip
}

output "web_server_public_ip" {
  description = "Public IP of the Web Server"
  value       = aws_instance.web.public_ip
}