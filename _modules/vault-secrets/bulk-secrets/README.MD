# Vault Secrets - Bulk Secrets

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
| [hcp_vault_secrets_secret.this](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secrets"></a> [secrets](#input\_secrets) | ------------------------------------------------------------------------------ Variables ------------------------------------------------------------------------------ | <pre>list(object({<br>    app_name     = string<br>    secret_name  = string<br>    secret_value = string<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
