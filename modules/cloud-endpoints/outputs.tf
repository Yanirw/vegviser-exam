output "endpoint_url" {
  value = google_endpoints_service.openapi_service.endpoints
}
output "service_name" {
  value = google_endpoints_service.openapi_service.service_name
}
