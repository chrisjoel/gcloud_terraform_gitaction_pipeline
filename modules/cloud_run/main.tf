resource "google_cloud_run_v2_service" "default" {
  name     = "php-fpm-service"
  location = var.region
  deletion_protection = false
  ingress = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "gcr.io/${var.project_id}/php-fpm:joel"

       ports {
        container_port = 9000
      }
    }
  }
}


#output "service_url" {
#  value = google_cloud_run_v2_service.default.status[0].url
#}