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