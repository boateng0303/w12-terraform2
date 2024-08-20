provider "aws" {
  region = "us-east-1"
  alias = "us1"
}

provider "aws" {
  region = "us-east-2"
  alias = "us2"
}
resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# Create the Key Pair in aws
resource "aws_key_pair" "aws_key" {
  key_name   = "mykey"
  public_key = tls_private_key.ec2_key.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "mykey.pem"
  content  = tls_private_key.ec2_key.private_key_pem
}



resource "aws_instance" "name" {
  provider = aws.us1
  key_name = aws_key_pair.aws_key.key_name
  ami = "ami-0c8e23f950c7725b9"
  instance_type = "t2.micro"
  
}

resource "null_resource" "n1" {
  
  connection {
    type = "ssh"
    port = 22
    user = "ec2-user"
    host = aws_instance.name.public_ip
    private_key = file(local_file.ssh_key.filename)
  }

  provisioner "local-exec" {
    command = "touch terraform.txt"
  }
  provisioner "file" {
    source = "terraform.txt"
    destination = "/tmp/terraform.txt"
  }
  provisioner "remote-exec" {
    inline = [  
        "touch serge",
        "mkdir kwame"

      
        
     ]
  }
  depends_on = [ aws_instance.name,local_file.ssh_key ]
}