variable "project_id" {}

variable "topics" {
  type    = list(string)
  default = ["topic1", "topic2"]
}