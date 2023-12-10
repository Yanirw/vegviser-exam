output "cloud_endpoints_url" {
  value = module.cloud-endpoints.endpoint_url
}

output "project_id" {
  value = var.project_id
}

# output "topic_name" {
#   value = module.pubsub.topic_name
# }