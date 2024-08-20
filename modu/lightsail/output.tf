output "public-ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}