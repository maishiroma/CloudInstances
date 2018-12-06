module "docker_master_instance" {
  source = "../terraformModule"

  instance_name  = "${var.master_name}"
  tags           = "${var.master_tags}"
  startup_script = "${var.startup_script}"
  keypath        = "${var.public_SSH_key_path}"
}

module "docker_worker_instance" {
  source = "../terraformModule"

  instance_name  = "${var.worker_name}"
  tags           = "${var.worker_tags}"
  startup_script = "${var.startup_script}"
  keypath        = "${var.public_SSH_key_path}"
}
