output "project_id" {
  description = "The ID of the created GCP project"
  value       = google_project.main.project_id
}

output "project_number" {
  value = google_project.main.number
}

output "project_name" {
  description = "The name of the created GCP project"
  value       = google_project.main.name
}

output "service_account_email" {
  value = google_service_account.main.email
}

output "service_account_id" {
  description = "The unique ID of the main service account."
  value       = google_service_account.main.unique_id
}