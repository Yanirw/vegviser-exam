variable "project_name" {}

variable "region" {}

variable "project_id" {}

variable "openapi_config" {}

variable "function_name" {}

variable "function_location" {}

variable "topics" {
  type    = list(string)
  default = ["topic1", "topic2"]
}