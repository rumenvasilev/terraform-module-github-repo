# terraform-module-github-repo
Terraform module to create github repositories (and maintain compliance)

*NB! It relies on a [custom built github provider](https://github.com/integrations/terraform-provider-github/pull/2007).*

## Usage

Use as module source in your tf code.

```hcl
module "example" {
  source = "git@github.com:rumenvasilev/terraform-module-github-repo?ref=v0.0.3"
  token  = var.token

  name        = "sample-repo-name"
  description = "sample description here"
  visibility  = "public"
}

variable "token" {}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_repository_permissions.disabled](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_repository_permissions) | resource |
| [github_actions_repository_permissions.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_repository_permissions) | resource |
| [github_branch.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_archived"></a> [archived](#input\_archived) | If you want to archive the repository | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | Which one is the main branch | `string` | `"main"` | no |
| <a name="input_branch_status_checks"></a> [branch\_status\_checks](#input\_branch\_status\_checks) | Configure status checks for branch protection rules | `list(any)` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the repository | `string` | n/a | yes |
| <a name="input_gha_patterns"></a> [gha\_patterns](#input\_gha\_patterns) | Github actions to be allowed | `list(any)` | `[]` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | Homepage of the repository (optional) | `string` | `""` | no |
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | Select license you want to apply | `string` | `"mit"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the repository | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | n/a | `string` | n/a | yes |
| <a name="input_topics"></a> [topics](#input\_topics) | Repository topics | `list(any)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Private or public repository | `string` | n/a | yes |

## Outputs

No outputs.
