
terraform {
  backend "gcs" {
    bucket = "terraform-backend-kloia-case"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "kloia-case"
  region  = "us-central1"
}
