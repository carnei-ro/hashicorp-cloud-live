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

locals {
  secrets = { for s in var.secrets : s.secret_name => s }
}

# ------------------------------------------------------------------------------
# Resource
# ------------------------------------------------------------------------------
resource "hcp_vault_secrets_secret" "this" {
  for_each = local.secrets

  app_name     = each.value.app_name
  secret_name  = each.value.secret_name
  secret_value = each.value.secret_value
}
