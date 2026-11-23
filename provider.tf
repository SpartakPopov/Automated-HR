terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 8.12"
    }
  }
}

provider "google" {
  project = "your-gcp-project-id"
  region  = "europe-west4"
}