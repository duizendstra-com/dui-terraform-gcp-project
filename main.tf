terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.38.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.38.0"
    }
  }
}

resource "random_id" "suffix" {
  byte_length = 2
}

resource "google_project" "main" {
  name            = var.project_name
  project_id      = "${var.project_id}-${random_id.suffix.hex}"
  folder_id       = var.folder_id
  billing_account = var.billing_account
}

resource "google_project_service" "project_services" {
  for_each           = toset(var.apis)
  project            = google_project.main.project_id
  service            = each.key
  disable_on_destroy = false

  depends_on = [google_project.main]
}
