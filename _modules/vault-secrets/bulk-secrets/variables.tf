# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "secrets" {
  type = list(object({
    app_name     = string
    secret_name  = string
    secret_value = string
  }))
}
