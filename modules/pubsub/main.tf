module "pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "~> 6.0"
  for_each = toset(var.topics)
  topic = each.key
  project_id = var.project_id

}