# This prints out key information that the general output would use
output "gcp_cluster_endpoint" {
  value = "${google_container_cluster.gcp_kubernetes.endpoint}"
}

output "gcp_cluster_name" {
  value = "${google_container_cluster.gcp_kubernetes.name}"
}
