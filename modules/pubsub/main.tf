module "pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "~> 6.0"

  topic      = "vegviser-topic"
  project_id = var.project_id

}