# This prints out the outputs of the module

output "HOLD_UP" {
  value = "To use 'docker' commands without sudo, make sure to 'sudo reboot' first when first connecting!"
}

output "master_public_ip" {
  value = "${module.docker_master_instance.instance_public_ip}"
}

output "master_private_ip" {
  value = "${module.docker_master_instance.instance_private_ip}"
}

output "worker_public_ip" {
  value = "${module.docker_worker_instance.instance_public_ip}"
}

output "worker_private_ip" {
  value = "${module.docker_worker_instance.instance_private_ip}"
}
