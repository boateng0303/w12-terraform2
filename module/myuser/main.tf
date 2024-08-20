provider "aws" {
  region = "us-east-1"
}

module "kay" {
  source = "../user"
  user = "kwame"
 
}