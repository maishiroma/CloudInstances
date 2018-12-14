# These output the private and public IPs of the instances made
output "vault_server_1_public_address" {
  value = "${google_compute_instance.vault_server_1.network_interface.0.access_config.0.nat_ip}"
}

output "vault_server_2_private_address" {
  value = "${google_compute_instance.vault_server_2.network_interface.0.network_ip}"
}

output "consul_server_1_public_address" {
  value = "${google_compute_instance.consul_server_1.network_interface.0.access_config.0.nat_ip}"
}

output "consul_server_2_private_address" {
  value = "${google_compute_instance.consul_server_2.network_interface.0.network_ip}"
}
