# ------------------------------------------------------------------------------
# Resources
# ------------------------------------------------------------------------------
resource "hcp_vault_secrets_app" "this" {
  app_name    = var.app_name
  description = var.description
}
