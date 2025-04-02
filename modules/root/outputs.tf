output "instance_ips" {
  value = module.compute.instance_ips
}

output "bucket_name" {
  value = module.storage.bucket_name
}