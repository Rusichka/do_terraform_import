resource "digitalocean_database_cluster" "postgres-example" {
  name       = "example-postgres-cluster"
  engine     = "pg"
  version    = "14"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}

#resource "digitalocean_database_db" "database-example1" {
# cluster_id = digitalocean_database_cluster.postgres-example.id
#name       = "foobar"
#}

resource "digitalocean_database_cluster" "postgres-analistic" {
  name       = "analistic-postgres-cluster2"
  engine     = "pg"
  version    = "14"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}
