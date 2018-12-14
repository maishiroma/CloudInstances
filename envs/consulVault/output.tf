# Prints out the outputs from the module
output "vault1_public_ip" {
  value = "${module.consul_vault_cluster.vault_server_1_public_address}"
}

output "vault2_public_ip" {
  value = "${module.consul_vault_cluster.vault_server_2_private_address}"
}

output "consul1_public_ip" {
  value = "${module.consul_vault_cluster.vault_server_1_public_address}"
}

output "consul2_public_ip" {
  value = "${module.consul_vault_cluster.vault_server_2_private_address}"
}
