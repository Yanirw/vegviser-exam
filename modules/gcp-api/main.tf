resource "google_project_service" "endpoints" {
  project = var.project_id
  service = "endpoints.googleapis.com"

}

resource "google_project_service" "service_management" {
  project = var.project_id
  service = "servicemanagement.googleapis.com"

}

resource "google_project_service" "service_control" {
  project = var.project_id
  service = "servicecontrol.googleapis.com"

}
