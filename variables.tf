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
}
