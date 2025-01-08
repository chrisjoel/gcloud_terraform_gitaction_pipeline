# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name             = "my-database-instance"
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = true
}

resource "google_sql_database" "database" {
  name     = var.db_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "default" {
  name     = var.db_user
  password = var.db_password
  instance = google_sql_database_instance.instance.name
}