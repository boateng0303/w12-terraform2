# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "web" {
  ami                                  = "ami-03972092c42e8c0ca"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.small"
  ipv6_address_count                   = 0
  key_name                             = "webserver"
  monitoring                           = false
  security_groups                      = ["launch-wizard-4"]
  subnet_id                            = "subnet-0dbdefad74fdbc568"
  tags = {
    Name = "my-server"
  }
} 