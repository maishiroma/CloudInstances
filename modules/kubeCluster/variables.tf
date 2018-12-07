# Variables that are required for spinning up a VM in GCloud

variable "cluster_name" {}

variable "tags" {
  type    = "list"
  default = ["mattyshiro", "terraform"]
}

variable "instance_type" {
  default = "f1-micro"
}

variable "cluster_count" {}

variable "keypath" {}

variable "username" {}

variable "password" {}

variable "zones" {
  type = "list"
}
