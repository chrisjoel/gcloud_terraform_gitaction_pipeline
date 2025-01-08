# PHP-FPM pipeline terraform #

## Autor Joel Ebenka ##

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
Use modules and tfvars for reusability and to follow terraform best practices
- terraform init
- terraform validate
- terraform plan -var-file=terraform.tfvars
- terraform apply -var-file=terraform.tfvars --auto-approve
- terraform destroy -var-file=terraform.tfvars --auto-approve
