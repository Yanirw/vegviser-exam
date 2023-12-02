provider "google" {
  project = var.project_name
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "vegvizer-tf-backend"
    prefix = "terraform/state"
  }
}

module "cloud-endpoints" {
  source         = "./modules/cloud-endpoints"
  project_id     = var.project_id
  openapi_config = var.openapi_config

}

module "cloud-functions" {
  source            = "./modules/cloud-functions"
  project_id        = var.project_id
  function_name     = var.function_name
  function_location = var.function_location

}

module "pubsub_module" {
  source     = "./modules/pubsub"
  project_id = var.project_id
}
