module "consul_vault_cluster" {
  source = "../../modules/consulVaultCluster"

  vault_tags            = "${var.vault_tags}"
  vault_startup_script  = "${var.vault_bootstrap}"
  consul_tags           = "${var.consul_tags}"
  consul_startup_script = "${var.consul_bootstrap}"
  keypath               = "${var.public_SSH_key_path}"
}
