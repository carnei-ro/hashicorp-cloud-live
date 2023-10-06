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

# ------------------------------------------------------------------------------
# Resource
# ------------------------------------------------------------------------------
resource "hcp_vault_secrets_secret" "this" {
  app_name     = var.app_name
  secret_name  = var.secret_name
  secret_value = var.secret_value
}

# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------
output "app_name" {
  value       = hcp_vault_secrets_secret.this.app_name
  description = "The name of the application the secret can be found in"
}

output "secret_name" {
  value       = hcp_vault_secrets_secret.this.secret_name
  description = "The name of the secret."
}

output "secret_value" {
  value       = hcp_vault_secrets_secret.this.secret_value
  description = "The value of the secret."
  sensitive   = true
}

output "id" {
  value       = hcp_vault_secrets_secret.this.id
  description = "The id of the resource."
}

output "organization_id" {
  value       = hcp_vault_secrets_secret.this.organization_id
  description = "The ID of the HCP organization where the project the HCP Vault Secrets secret is located."
}

output "project_id" {
  value       = hcp_vault_secrets_secret.this.project_id
  description = "The ID of the HCP project where the HCP Vault Secrets secret is located.."
}
