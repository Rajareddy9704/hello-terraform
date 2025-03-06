variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0d8eee72f13bd7a0f"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "demo"
}

variable "subnet_id" {
  type = string
  default = ""
  
}

variable "vpc_id" {
  type = string
  default = ""
  
}


