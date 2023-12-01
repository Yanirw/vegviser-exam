
output "function_uri" {
  description = "URI of the Cloud Function (Gen 2)"
  value       = module.cloud_functions2.function_uri
}

output "function_name" {
  description = "Name of the Cloud Function (Gen 2)"
  value       = module.cloud_functions2.function_name
}

output "function_location" {
  description = "Location of the Cloud Function (Gen 2)"
  value       = var.function_location
}

output "project_id" {
  value       = var.project_id
  description = "The project ID"
}