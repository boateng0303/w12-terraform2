# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "myserver"
resource "aws_lightsail_instance" "firstlightsail" {
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  ip_address_type   = "dualstack"
  key_pair_name     = "week2"
  name              = "myserver"
}
