# PHP-FPM pipeline terraform #
## Autor Joel Ebenka ##

terraform_project/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── modules/
│   ├── cloud_sql/
│   │   └── main.tf
│   ├── storage_bucket/
│   │   └── main.tf
│   ├── cloud_run/
│   │   └── main.tf
└── README.md


## Prerequisites ##
- Write the dockerfile and create the docker image
- Google Cloud SDK installed and authenticated.
- Terraform installed.

## Docker documentation ##
- https://registry.terraform.io/browse/modules?provider=google
- create the dockerfile with the necessary configuration file
- gcloud auth login
- gcloud auth configure-docker
- docker tag  php-fpm-app:joel gcr.io/project_id/php-fpm-app:joel
- docker push gcr.io/project_id/php-fpm-app:joel


## Terraform configuration ##
- 
