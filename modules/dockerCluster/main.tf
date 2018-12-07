# Basic Main file that will create a single gcloud instance

# This is the resource used to create the master instance
resource "google_compute_instance" "terraform_instance" {
  name         = "${var.instance_name}"
  machine_type = "${var.instance_type}"
  tags         = "${var.tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  # For now, we just need to use the default set
  network_interface {
    network       = "default"
    access_config = {}
  }

  # The script needs to be in the format of this
  metadata_startup_script = "${var.startup_script}"

  # In order to get SSH access, you need to put this in
  metadata {
    sshKeys = "$(file(${var.keypath}))"
  }
}
