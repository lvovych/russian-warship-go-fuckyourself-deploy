resource "local_file" "inventory" {
    filename = "inventory.yml"
    content = templatefile("inventory.tmpl", { ip_address = digitalocean_droplet.tf_do })
}
