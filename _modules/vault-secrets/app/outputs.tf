# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------
output "app_name" {
  value       = hcp_vault_secrets_app.this.app_name
  description = "The Vault Secrets App name."
}

output "description" {
  value       = hcp_vault_secrets_app.this.description
  description = "The Vault Secrets app description."
}

output "id" {
  value       = hcp_vault_secrets_app.this.id
  description = "Required ID field that is set to the app name."
}

output "organization_id" {
  value       = hcp_vault_secrets_app.this.organization_id
  description = "The ID of the HCP organization where the project the HCP Vault Secrets app is located."
}

output "project_id" {
  value       = hcp_vault_secrets_app.this.project_id
  description = "The ID of the HCP project where the HCP Vault Secrets app is located."
}
