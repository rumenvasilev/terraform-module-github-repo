resource "github_repository" "this" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url
  visibility   = var.visibility
  topics       = var.topics

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false
  is_template     = false

  allow_merge_commit = true
  allow_squash_merge = false
  allow_rebase_merge = false

  allow_auto_merge = false

  delete_branch_on_merge = true
  web_commit_signoff_required = true
  auto_init = true

  license_template = var.license_template

  allow_update_branch = true
}

// https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_repository_permissions
resource "github_actions_repository_permissions" "this" {
  allowed_actions = "selected"
  allowed_actions_config {
    github_owned_allowed = true
    patterns_allowed     = var.gha_patterns
    verified_allowed     = false
  }
  repository = github_repository.this.name
}
