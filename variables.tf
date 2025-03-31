variable "vpc_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "terraform-vpc"
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
  default     = "terraform-storage-bucket"
}

variable "bucket_location" {
  description = "The location of the storage bucket"
  type        = string
  default     = "US"
}

variable "instance_count" {
  description = "The number of compute instances"
  type        = number
  default     = 2
}

variable "instance_name_prefix" {
  description = "The prefix for the instance names"
  type        = string
  default     = "ubuntu-instance"
}

variable "machine_type" {
  description = "The machine type for the instances"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "The image for the instances"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
}