provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_lightsail_instance.firstlightsail
  id = "myserver"
}

