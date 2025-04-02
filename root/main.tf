terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project     = "terraform-gcp-Rcordero"
  region      = "us-east1"
  zone        = "us-east1-d"
  credentials = file("C:/Users/User/Documents/terraformkey")
}

resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.bucket_location
}

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
    network = google_compute_network.vpc_network.name
    access_config {
      // Ephemeral IP
    }
  }
}