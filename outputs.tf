output "cloud_endpoints_url" {
  value = module.cloud-endpoints.endpoint_url
}

output "function_id" {
  value = module.cloud-functions.function_id
}

output "project_id" {
  value = var.project_id
}

output "pubsub_info" {
  value = module.pubsub_module.some_output
}

