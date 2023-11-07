# terraform-module-github-repo
Terraform module to create github repositories (and maintain compliance)

## State

State is stored locally

## How to use

* Clone it
* Write a tfvars file (you can use terraform.tfvars.sample as example)
* Execute it

```bash
terraform init
terraform plan
terraform apply
```

*NB!* It works with a [custom built github provider](https://github.com/integrations/terraform-provider-github/pull/2007).

## Or...

Use as module source in your tf code.
