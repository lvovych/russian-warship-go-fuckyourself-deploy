variable "v" {
  description = "root module"
  default     = ""
}

variable "do_token" {}
variable "do_droplets_count" {}

resource "digitalocean_ssh_key" "default" {
  name       = "DigitalOcean SSH"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_droplet" "tf_do" {
  count = var.do_droplets_count
  image  = "debian-10-x64"
  region = "ams3"
  size   = "s-1vcpu-1gb"
  provider = digitalocean
  name = "tfdo${count.index}"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
