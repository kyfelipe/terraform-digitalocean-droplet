output "ips" {
  value = digitalocean_droplet.droplet.*.ipv4_address
}
