data "digitalocean_image" "image" {
  slug = var.image
}

data "digitalocean_ssh_key" "name" {
  name = var.ssh_name
}

resource "digitalocean_droplet" "droplet" {
  count              = var.number_machines
  image              = data.digitalocean_image.image.id
  name               = var.name
  region             = var.region
  size               = var.size
  backups            = var.backups
  monitoring         = var.monitoring
  ipv6               = var.ipv6
  private_networking = var.private_networking
  user_data          = var.user_data
  ssh_keys           = [data.digitalocean_ssh_key.name.id]
  tags               = var.tags
}
