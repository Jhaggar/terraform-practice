resource "aws_instance" "instance" {
  ami                  = lookup(var.instance_ami, var.aws_region)
  instance_type        = var.instance_instance_type
  key_name             = var.keypair
  instance_username    = var.instance_username
  tags = {
    Name = "Loves-sandbox-instance"
  }
}