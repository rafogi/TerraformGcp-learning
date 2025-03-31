terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project     = "forward-theorem-455316-n3"
  region      = "us-east1"
  zone        = "us-east1-d"
  credentials = file("<path-to-your-json-key-file>")
}

module "vpc" {
  source   = "../modules/vpc"
  vpc_name = var.vpc_name
}

module "storage" {
  source          = "../modules/storage"
  bucket_name     = var.bucket_name
  bucket_location = var.bucket_location
}

module "compute" {
  source           = "../modules/compute"
  vpc_network_name = module.vpc.vpc_network_name
  instance_count   = var.instance_count
  instance_name_prefix = var.instance_name_prefix
  machine_type     = var.machine_type
  image            = var.image
}