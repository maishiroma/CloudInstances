# This file creates the vault/consul cluster

# This will NOT be production ready, since there will only be four instances: two vault servers with consul and two consul servers
resource "google_compute_instance" "vault_server_1" {
  name         = "${var.vault_server_name_1}"
  machine_type = "${var.instance_type}"
  tags         = "${var.vault_tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata_startup_script = "${var.vault_startup_script}"

  metadata {
    sshKeys = "$(file(${var.keypath}))"
  }
}

resource "google_compute_instance" "vault_server_2" {
  name         = "${var.vault_server_name_2}"
  machine_type = "${var.instance_type}"
  tags         = "${var.vault_tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata_startup_script = "${var.vault_startup_script}"

  metadata {
    sshKeys = "$(file(${var.keypath}))"
  }
}

resource "google_compute_instance" "consul_server_1" {
  name         = "${var.consul_server_name_1}"
  machine_type = "${var.instance_type}"
  tags         = "${var.consul_tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata_startup_script = "${var.consul_startup_script}"

  metadata {
    sshKeys = "$(file(${var.keypath}))"
  }
}

resource "google_compute_instance" "consul_server_2" {
  name         = "${var.consul_server_name_2}"
  machine_type = "${var.instance_type}"
  tags         = "${var.consul_tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata_startup_script = "${var.consul_startup_script}"

  metadata {
    sshKeys = "$(file(${var.keypath}))"
  }
}
