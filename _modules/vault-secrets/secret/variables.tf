# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "app_name" {
  type        = string
  description = "The name of the application the secret can be found in."
}

variable "secret_name" {
  type        = string
  description = "The name of the secret."
}

variable "secret_value" {
  type        = string
  description = "The value of the secret."
  sensitive   = true
}
