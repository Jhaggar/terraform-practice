#variable "DIGITALOCEAN_ACCESS_KEY" {}

#variable "DIGITALOCEAN_SECRET_KEY" {}

variable "DIGITALOCEAN_TOKEN" {
}

variable "REGION" {
  default = "eu-west-1"
}

variable "IMAGE" {
  default = "ubuntu-18-04-x64"
}

variable "PATH_TO_SSH_KEY" {
  default = "~/.ssh/id_rsa"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}