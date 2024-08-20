variable "key_name" {
  
  description = "key pair name to create"
  #default = "dev-key"
  type = string

}


variable "file_name" {
  default = "dev-key.pem"
}