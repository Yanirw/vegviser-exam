output "topic_name" {
  description = "The name of the created Pub/Sub topic"
  value       = google_pubsub_topic.exam_pubsub.name
}
