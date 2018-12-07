# Variables that are required for spinning up a VM in GCloud

variable "instance_name" {}

variable "tags" {
  type    = "list"
  default = ["mattyshiro", "terraform"]
}

variable "instance_type" {
  default = "f1-micro"
}

variable "image" {
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "startup_script" {}

variable "keypath" {}
