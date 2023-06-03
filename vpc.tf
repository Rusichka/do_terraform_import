resource "digitalocean_vpc" "ex" {
  name     = "project-network"
  region   = "nyc3"
  ip_range = "10.10.10.0/24"
}
