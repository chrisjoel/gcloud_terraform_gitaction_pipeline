provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloud_sql" {
  source      = "./modules/cloud_sql"
  region      = var.region
  project_id  = var.project_id
  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
  bucket_name = var.bucket_name
}

module "google_storage_bucket" {
  source      = "./modules/storage_bucket"
  region      = var.region
  project_id  = var.project_id
  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
  bucket_name = var.bucket_name

}

module "google_cloud_run_V2_service" {
  source      = "./modules/cloud_run"
  region      = var.region
  project_id  = var.project_id
  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
  bucket_name = var.bucket_name
}