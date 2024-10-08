resource "google_storage_bucket" "default" {
  count         = var.create_count
  project       = var.project_id
  name          = var.bucket_name
  location      = var.bucket_region
  force_destroy = var.force_destroy
  storage_class = var.storage_class

  uniform_bucket_level_access = var.uniform_bucket_level_access


  versioning {
    enabled = var.versioning
  }

  retention_policy {
    is_locked        = false
    retention_period = var.retention_period
  }

}