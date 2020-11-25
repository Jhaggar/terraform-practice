variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default     = "us-east-1"
}

variable "aws_region" {
  description = "aws region, e.g us-west-2"
  default     = "us-east-1"
}

variable "instance_ami" {
  default = {
    us-east-1 = "ami-07ebfd5b3428b6f4d"
  }
}

variable "instance_instance_type" {
  default     = "t2.micro"
}

variable "instance_root_device_size" {
  default = 10
}

variable "keypair" {
  description = "keypair to put on the ec2 instance"
  default     = "awsCarbonite"
}

variable "instance_username" {
  default     = "ubuntu"
}