# Vault Secrets - App

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_vault_secrets_app.this](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The Vault Secrets App name. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The Vault Secrets app description. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_name"></a> [app\_name](#output\_app\_name) | The Vault Secrets App name. |
| <a name="output_description"></a> [description](#output\_description) | The Vault Secrets app description. |
| <a name="output_id"></a> [id](#output\_id) | Required ID field that is set to the app name. |
| <a name="output_organization_id"></a> [organization\_id](#output\_organization\_id) | The ID of the HCP organization where the project the HCP Vault Secrets app is located. |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The ID of the HCP project where the HCP Vault Secrets app is located. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
