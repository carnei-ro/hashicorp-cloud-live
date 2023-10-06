# Vault Secrets - Secret

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | ~> 0.72.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.72.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_vault_secrets_secret.this](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of the application the secret can be found in. | `string` | n/a | yes |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | The name of the secret. | `string` | n/a | yes |
| <a name="input_secret_value"></a> [secret\_value](#input\_secret\_value) | The value of the secret. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_name"></a> [app\_name](#output\_app\_name) | The name of the application the secret can be found in |
| <a name="output_id"></a> [id](#output\_id) | The id of the resource. |
| <a name="output_organization_id"></a> [organization\_id](#output\_organization\_id) | The ID of the HCP organization where the project the HCP Vault Secrets secret is located. |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The ID of the HCP project where the HCP Vault Secrets secret is located.. |
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | The name of the secret. |
| <a name="output_secret_value"></a> [secret\_value](#output\_secret\_value) | The value of the secret. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
