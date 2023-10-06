# ------------------------------------------------------------------------------
# Resources
# ------------------------------------------------------------------------------
resource "hcp_vault_secrets_secret" "this" {
  app_name     = var.app_name
  secret_name  = var.secret_name
  secret_value = var.secret_value
}
