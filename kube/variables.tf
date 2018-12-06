# This is variables specifically defined for creating Kubernetes pods in GCE

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

# Variables for creating the cluster
variable "public_SSH_key_path" {}

variable "cluster_name" {
  default = "kube-terraform-cluster"
}

variable "cluster_tags" {
  type    = "list"
  default = ["mattyshiro", "terraform-kube"]
}

variable "cluster_count" {
  default = 1
}

variable "admin_username" {}

variable "admin_password" {}

variable "additional_zones" {
  type    = "list"
  default = ["us-west1-a", "us-west1-b"]
}
