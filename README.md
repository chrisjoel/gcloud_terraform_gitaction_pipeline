# PHP-FPM pipeline terraform #

## Autor Joel Ebenka ##

## Prerequisites ##

- Write the dockerfile and create the docker image
- Google Cloud SDK on vscode installed and authenticated.
- Terraform installed.

## Docker documentation ##

- https://registry.terraform.io/browse/modules?provider=google
- https://registry.terraform.io/providers/hashicorp/google/latest/docs
- create the dockerfile with the necessary configuration file
- gcloud auth login
- gcloud auth configure-docker
- docker tag  php-fpm-app:joel gcr.io/project_id/php-fpm-app:joel
- docker push gcr.io/project_id/php-fpm-app:joel

## NOTE: ##  
We need to activate all the required API and service account
- artifact registry
- cloud run admin

## Terraform configuration ##

The following resources will be created:

Google Cloud Project (optional, only if not existing)
Cloud SQL Instance (MySQL)
Cloud Storage Bucket for static files
Cloud Run Service:
Container image built from a Dockerfile for the PHP-FPM application
Nginx configuration for serving static files and proxying requests to the PHP-FPM container
Cloud Load Balancer (HTTP(S)) to route traffic to the Cloud Run service

Refactor for Best Practices

- Use Modules: Refactor your configuration into modules for reusable components (e.g., create a cloud_sql module for the Cloud SQL instance).
- Leverage Variables: Use variables for all environment-specific configurations.
- Implement State Management: Use a remote backend, such as Terraform Cloud or Google Cloud Storage, to manage your state file securely.

  - terraform init
  - terraform validate
  - terraform plan -var-file=terraform.tfvars
  - terraform apply -var-file=terraform.tfvars --auto-approve
  - terraform destroy -var-file=terraform.tfvars --auto-approve


## GitAction Documentation ##


