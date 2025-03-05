output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.tomcat.public_ip
}

output "security_group_id" {
  description = "ID of the created security group"
  value       = aws_security_group.tomcat_sg.id
}

