# terraform
terraform
State - terraform.tfstate
Terraform must store state about our managed infrastructure and configuration. This state is used by Terraform to map real world resources to our configuration, keep track of metadata, and to improve performance for large infrastructures.

This state is stored by default in a local file named terraform.tfstate

Terraform uses this local state to create plans and make changes to our infrastructure. Before any terraform operation, Terraform does a refresh to update the state with the real infrastructure.

import
Import - https://www.terraform.io/docs/import/

Terraform is able to import existing infrastructure. This allows us take resources we've created by some other means (i.e. via console) and bring it under Terraform management.

This is a great way to slowly transition infrastructure to Terraform.

The terraform import command is used to import existing infrastructure.

To import a resource, first write a resource block for it in our configuration, establishing the name by which it will be known to Terraform. For example
