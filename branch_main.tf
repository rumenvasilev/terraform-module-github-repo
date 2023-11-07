resource "github_branch" "main" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "main" {
  repository = github_repository.this.name
  branch     = github_branch.main.branch
}

// https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection
resource "github_branch_protection" "main" {
  repository_id = github_repository.this.node_id

  pattern        = "main"
  enforce_admins = false

  require_signed_commits = true
  // required_linear_history = true

  allows_deletions = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
    required_approving_review_count = 1
  }

}