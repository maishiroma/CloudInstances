# Returns the public and private IP of the instance we made
output "instance_public_ip" {
  value = "${google_compute_instance.terraform_instance.network_interface.0.access_config.0.nat_ip}"
}

output "instance_private_ip" {
  value = "${google_compute_instance.terraform_instance.network_interface.0.network_ip}"
}
