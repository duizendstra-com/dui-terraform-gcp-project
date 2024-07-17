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