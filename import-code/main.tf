
provider "aws" {
  region = "us-east-1"
}


import {
  to = aws_instance.web
  id = "i-067e79b5cddd27c65"
}