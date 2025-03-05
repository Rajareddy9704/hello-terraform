resource "aws_instance" "tomcat" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group]
  associate_public_ip_address = true

  user_data = file("${path.module}/install_tomcat.sh")  # Run script on startup

  tags = {
    Name = "Tomcat-Server"
  }
}
