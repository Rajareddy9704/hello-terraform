module "networking" {
  source      = "./modules/networking"
  vpc_cidr    = "10.0.0.0/16"
  vpc_name    = "Hello-app-vpc"
  subnet_cidr = "10.0.1.0/24"
  subnet_name = "Hello-app-subnet"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}
