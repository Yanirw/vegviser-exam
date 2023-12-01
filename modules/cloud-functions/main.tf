
resource "google_storage_bucket" "bucket" {
  name                        = "${var.project_id}-gcf-source"
  location                    = "US"
  uniform_bucket_level_access = true
  project                     = var.project_id
}

resource "google_storage_bucket_object" "function-source" {
  name   = "sample_function_py.zip"
  bucket = google_storage_bucket.bucket.name
  source = "./sample_function_py/sample_function_py.zip"
}
module "cloud_functions2" {
  source            = "GoogleCloudPlatform/cloud-functions/google"
  project_id        = var.project_id
  function_name     = var.function_name
  function_location = var.function_location
  runtime           = "python38"
  entrypoint        = "hello_http"
  storage_source = {
    bucket     = google_storage_bucket.bucket.name
    object     = google_storage_bucket_object.function-source.name
    generation = null
  }
}