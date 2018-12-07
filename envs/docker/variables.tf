# This is variables specifically defined for creating Docker containers in GCE

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
variable "startup_script" {
  default = "sudo snap install docker; sudo groupadd docker; sudo usermod -aG docker mshiroma;"
}

variable "public_SSH_key_path" {}

# Variables specifically for the master instance
variable "master_name" {
  default = "master-docker"
}

variable "master_tags" {
  type    = "list"
  default = ["mattyshiro", "terraform-docker", "master"]
}

# Variables specifically for the worker instance
variable "worker_name" {
  default = "worker-docker"
}

variable "worker_tags" {
  type    = "list"
  default = ["mattyshiro", "terraform-docker", "worker"]
}
