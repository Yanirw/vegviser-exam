resource "google_pubsub_topic" "exam_pubsub" {
  name = "${var.project_id}-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}