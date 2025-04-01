variable "vpc_network_name" {
  description = "The name of the VPC network"
  type        = string
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