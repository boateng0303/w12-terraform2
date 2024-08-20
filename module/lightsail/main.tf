resource "aws_lightsail_instance" "server" {
  name = var.instance_name
  blueprint_id = var.b_print
  bundle_id    = var.bundle_id
  availability_zone = var.az
  key_pair_name     = var.key-name
  //user_data = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
  tags = {
    //"Name"       = "Terraform_server_demo"
    "env"        = "Dev"
    "Team"       = var.Team
    "Created by" = "Kwasi Boateng"
  }
}