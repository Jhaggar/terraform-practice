resource "digitalocean_ssh_key" "default" {
  name    = "mykey"
  ssh_key = file(var.PATH_TO_SSH_KEY)
}

resource "digitalocean_droplet" "webserver" {
  name               = "webserver"
  ssh_keys           = "${file("~/.ssh/id_rsa")}"    
  image              = var.IMAGE
  region             = var.REGION
  size               = "s-1vcpu-1gb"


  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt-get update",
      "sudo apt-get -y install nginx",
    ]
  connection {
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
    timeout  = "2m"
  }
 }
}