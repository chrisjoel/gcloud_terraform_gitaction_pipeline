variable "project_id" {
  description = "The ID of the project"
  type        = string
}

variable "region" {
  description = "The region for resources"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_user" {
  description = "The database user"
  type        = string
}

variable "db_password" {
  description = "The password for the database user"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "The name of the Cloud Storage bucket"
  type        = string
}