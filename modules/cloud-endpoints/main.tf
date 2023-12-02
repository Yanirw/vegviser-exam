resource "google_endpoints_service" "openapi_service" {
  service_name   = "vegvizer-exam.appspot.com"
  project        = var.project_id
  openapi_config = file(var.openapi_config)
}

