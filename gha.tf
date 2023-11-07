// https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_repository_permissions
resource "github_actions_repository_permissions" "disabled" {
  count      = length(var.gha_patterns) > 0 ? 0 : 1
  enabled    = false
  repository = github_repository.this.name
}

resource "github_actions_repository_permissions" "this" {
  count           = length(var.gha_patterns) > 0 ? 1 : 0
  enabled         = true
  allowed_actions = "selected"
  allowed_actions_config {
    github_owned_allowed = true
    patterns_allowed     = var.gha_patterns
    verified_allowed     = false
  }
  repository = github_repository.this.name
}
