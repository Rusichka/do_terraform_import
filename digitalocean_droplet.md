resource "digitalocean_droplet" "do_droplet" {
    size = "s-1vcpu-512mb-10gb"
    image = "ubuntu-22-10-x64" 
    name  = "ubuntu-droplet"
    region = "fra1"
    tags    = []
}
