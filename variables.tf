variable "token" {
  type = string
}

variable "name" {
  description = "The name of the repository"
  type        = string
}

variable "description" {
  description = "Description of the repository"
  type        = string
}

variable "branch" {
  description = "Which one is the main branch"
  type        = string
  default     = "main"
}

variable "homepage_url" {
  description = "Homepage of the repository (optional)"
  type        = string
  default     = ""
}

variable "license_template" {
  description = "Select license you want to apply"
  type        = string
  default     = "mit"
}

variable "visibility" {
  description = "Private or public repository"
  type        = string
}

variable "topics" {
  description = "Repository topics"
  type        = list(any)
  default     = []
}

variable "gha_patterns" {
  description = "Github actions to be allowed"
  type        = list(any)
  default     = []
}

variable "branch_status_checks" {
  description = "Configure status checks for branch protection rules"
  type        = list(any)
  default     = []
}

variable "archived" {
  description = "If you want to archive the repository"
  type        = bool
  default     = false
}
