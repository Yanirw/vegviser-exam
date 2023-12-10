resource "google_project_service" "services" {
  project = var.project_id
  for_each = toset( ["servicecontrol.googleapis.com", "servicemanagement.googleapis.com", "endpoints.googleapis.com"] )
  service = each.key
  disable_on_destroy = false

}