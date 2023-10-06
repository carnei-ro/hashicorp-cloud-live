# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "app_name" {
  type        = string
  description = "The Vault Secrets App name."
}

variable "description" {
  type        = string
  description = "The Vault Secrets app description."
  default     = ""
}
