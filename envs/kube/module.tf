module "kube_cluster" {
  source = "../../modules/kubeCluster"

  cluster_name  = "${var.cluster_name}"
  tags          = "${var.cluster_tags}"
  keypath       = "${var.public_SSH_key_path}"
  cluster_count = "${var.cluster_count}"
  username      = "${var.admin_username}"
  password      = "${var.admin_password}"
  zones         = "${var.additional_zones}"
}
