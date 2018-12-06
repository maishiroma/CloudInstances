# This prints out what was outputted from the module onto the screen
output "kube-master endpoint" {
  value = "${module.kube_cluster.gcp_cluster_endpoint}"
}

output "RUN_THIS" {
  value = "gcloud container clusters get-credentials ${module.kube_cluster.gcp_cluster_name} --zone ${var.zone} --project ${var.project_name}"
}
