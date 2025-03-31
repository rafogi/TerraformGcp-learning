resource "google_compute_instance" "ubuntu_instance" {
  count        = var.instance_count
  name         = "${var.instance_name_prefix}-${count.index + 1}"
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = var.vpc_network_name
    access_config {
      // Ephemeral IP
    }
  }
}