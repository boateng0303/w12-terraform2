provider "aws" {
  region = var.region
}



resource "aws_lightsail_instance" "custom" {
  name              = var.name
  availability_zone = var.az
  key_pair_name = "week2"
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
}