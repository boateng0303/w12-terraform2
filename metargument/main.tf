provider "aws" {
  
}


# resource "aws_instance" "server" {
#   count = 2
#   ami = "ami-03972092c42e8c0ca"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "DEV-${count.index +1}"
#   }
  

# }


# output "public-ip" {
#   value = aws_instance.server[*].public_ip
# }


# locals {
#   env = "dev"
# }

# output "v" {
#   value = local.env
# }
# resource "aws_iam_user" "n1" {
#   count = 2
#   name = "Terraform-${count.index +1}"
# }

# output "user1" {
#   value = aws_iam_user.n1[0].name
# }




# variable "usernames" {
#   default = ["ansible", "Devops", "developer"]
#   type = list(string)
# }

variable "instance_type" {
  default = ["t2.micro", "t3.small", "t2.medium"]
}
# resource "aws_iam_user" "n1" {
#   for_each = toset(var.usernames)
#   name = each.key
# }
resource "aws_instance" "sv1" {
  for_each = toset(var.instance_type)
  ami = "ami-0ae8f15ae66fe8cda"
  instance_type = each.key 
}