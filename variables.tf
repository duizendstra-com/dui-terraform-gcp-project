variable "project_name" {
  description = "The name of the GCP project"
  type        = string
}

variable "project_id" {
  description = "The ID for the GCP project ID"
  type        = string
}

variable "folder_id" {
  description = "The folder ID to create the project in"
  type        = string
}

variable "billing_account" {
  description = "The billing account ID"
  type        = string
}

variable "apis" {
  description = "List of APIs to enable"
  type        = list(string)
  default = [
  ]
}
