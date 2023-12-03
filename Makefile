# Applies to every targets in the file! https://www.gnu.org/software/make/manual/html_node/One-Shell.html
.ONESHELL:

##TODO Create a docker image with all the tools used and run all the commands using containers 
TF_PROVIDER_FILE = https://gitlab.com/-/snippets/2498907/raw/main/localstack_terraform_conf.tf
lint:
	terraform validate

graph:
	rover -tfPath `which terraform` -genImage

fmt:
	terraform fmt -recursive

lint:
    docker run --rm -v $(pwd):/data -t ghcr.io/terraform-linters/tflint

init:
	terraform init

plan:
	terraform init
    terraform plan -var-file=./envs/dev.tfvars

apply:
	terraform apply -var-file=./envs/dev.tfvars --auto-approve

destroy:
	terraform destroy --auto-approve

tf-security-check:
	docker run --rm -it -v "$(pwd):/src" aquasec/tfsec /src


tf-docs:
	docker run --rm --volume "$(pwd):/terraform-docs" -u $(id -u) quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs > MODULE.md

github-action-lint:
	act