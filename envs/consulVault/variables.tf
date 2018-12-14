# These are all of the variables this cluster will use

# General variables for Google

variable "project_name" {
  default = "mattshiro-kubehardway"
}

variable "region" {
  default = "us-west1"
}

variable "zone" {
  default = "us-west1-c"
}

# Variables for creating general instances
variable "public_SSH_key_path" {}

# Variables for creating the Vault instances
variable "vault_tags" {
  type    = "list"
  default = ["vault", "terraform", "mattyshiro"]
}

variable "vault_bootstrap" {
  default = "sudo snap install vault; sudo snap install consul;"
}

# Variables for creating the Consul instances
variable "consul_tags" {
  type    = "list"
  default = ["consul", "terraform", "mattyshiro"]
}

variable "consul_bootstrap" {
  default = "sudo snap install consul;"
}
