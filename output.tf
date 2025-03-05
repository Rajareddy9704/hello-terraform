output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.networking.vpc_id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.networking.subnet_id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2_instance.instance_public_ip
}
