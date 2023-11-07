resource "github_repository" "this" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url
  visibility   = var.visibility
  topics       = var.topics

  archived = var.archived

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false
  is_template     = false

  allow_merge_commit = true
  allow_squash_merge = false
  allow_rebase_merge = false

  allow_auto_merge = false

  delete_branch_on_merge      = true
  web_commit_signoff_required = true
  auto_init                   = true

  license_template = var.license_template

  allow_update_branch = true
}
