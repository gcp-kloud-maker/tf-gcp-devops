terraform {
  required_version = "~> 1.9.6"
}

provider "google" {
  # project = var.meta_project_id
  # region  = var.meta_region
}

provider "google-beta" {
  # project = var.meta_project_id
  region = var.meta_region
}

