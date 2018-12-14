# Variables that are required for spinning up a vault/consul cluster in GCloud

variable "image" {
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "instance_type" {
  default = "f1-micro"
}

variable "keypath" {}

variable "vault_server_name_1" {
  default = "vault-server-1"
}

variable "vault_server_name_2" {
  default = "vault-server-2"
}

variable "consul_server_name_1" {
  default = "consul-server-1"
}

variable "consul_server_name_2" {
  default = "consul-server-2"
}

variable "vault_startup_script" {}

variable "consul_startup_script" {}

variable "vault_tags" {
  type    = "list"
  default = ["mattyshiro", "terraform"]
}

variable "consul_tags" {
  type    = "list"
  default = ["mattyshiro", "terraform"]
}
