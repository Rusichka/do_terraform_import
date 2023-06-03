provider "digitalocean" {
  token   = "${var.do_token}"
  version = "1.9.1"
}

variable "do_token" {}
variable "pvt_key" {}


data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}

resource "digitalocean_droplet" "new" {
  image    = "ubuntu-18-04-x64"
  name     = "new"
  region   = "nyc3"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.terraform.id]
}
