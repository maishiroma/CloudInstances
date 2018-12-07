# This creates the kubernetes cluster
resource "google_container_cluster" "gcp_kubernetes" {
  name               = "${var.cluster_name}"
  initial_node_count = "${var.cluster_count}"

  additional_zones = "${var.zones}"

  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }

  node_config {
    disk_size_gb = 10
    machine_type = "${var.instance_type}"

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      what-is-dis = "mai-cluster"
    }

    tags = "${var.tags}"
  }
}
