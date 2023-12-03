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
module "gcp_api_module" {
  source = "./modules/gcp-api"  
  project_id = var.project_id
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

module "pubsub" {
  source     = "./modules/pubsub"
  project_id = var.project_id
  topic      = var.topic
}
