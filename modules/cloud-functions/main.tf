module "bucket" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 5.0"

  name       = "${var.project_id}-gcf-source"
  project_id = var.project_id
  location   = "us-east1"
  
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