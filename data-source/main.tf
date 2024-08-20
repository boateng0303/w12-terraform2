

# data "aws_instance" "data1" {
#   instance_id = "i-0a8f235c7a1492cb3"

  
#   }

# provider "aws" {
#   region = "us-east-1"
# }

#   resource "aws_instance" "server1" {
#     ami = data.aws_instance.data1.ami
#     instance_type = data.aws_instance.data1.instance_type
#     availability_zone = data.aws_instance.data1.availability_zone
#     security_groups = data.aws_instance.data1.security_groups
#   }




  data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}



data "aws_ami" "amz" {
  most_recent = true

  filter {
    name   = "name"
    values = [""]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "server2" {
  ami = data.aws_ami.amz.id
  instance_type = "t2.micro"
}