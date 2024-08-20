module "app2" {
  source = "../lightsail"
  name = "kwame"
  region = "us-east-1"
  az = "us-east-1a"
  blueprint_id = "amazon_linux_2023"
  bundle_id = "nano_3_0"


}