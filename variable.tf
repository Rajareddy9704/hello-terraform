# VPC Variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "vpc_name" {
  description = "Name for the VPC"
  default     = "Hello-app-vpc"
}

variable "subnet_name" {
  description = "Name for the subnet"
  default     = "Hello-app-subnet"
}

# EC2 Variables
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-05b10e08d247fb927" # Replace with valid AMI ID
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair for SSH access"
  default     = "nv-key"
}
