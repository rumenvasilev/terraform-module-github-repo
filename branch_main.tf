resource "github_branch" "main" {
  repository = github_repository.this.name
  branch     = var.branch
}

resource "github_branch_default" "main" {
  repository = github_repository.this.name
  branch     = github_branch.main.branch
}

// https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection
resource "github_branch_protection" "main" {
  count = var.visibility == "private" ? 0 : 1

  repository_id = github_repository.this.node_id

  pattern        = var.branch
  enforce_admins = false

  require_signed_commits = true
  // required_linear_history = true

  allows_deletions = false

  required_status_checks {
    strict   = true
    contexts = var.branch_status_checks
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    required_approving_review_count = 1
  }
}
