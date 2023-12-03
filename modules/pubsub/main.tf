module "pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "~> 6.0"

  topic      = var.topic
  project_id = var.project_id

}