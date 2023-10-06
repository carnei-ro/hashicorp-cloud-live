# ------------------------------------------------------------------------------
# TERRAGRUNT CONFIGURATION
# ------------------------------------------------------------------------------

# Version constraints
terraform_version_constraint  = ">= 1.4.6"
terragrunt_version_constraint = ">= 0.45.0"

# Local aliases for improved maintainability
locals {
  repo_root = get_repo_root()

  project_name = split("/", get_path_from_repo_root())[1]

  # Automatically load account variables
  project_vars = read_terragrunt_config(format("%s/projects/%s/project.hcl", local.repo_root, local.project_name)).locals

  # Automatically HashiCorp Cloud variables
  hashicorp_cloud = read_terragrunt_config(format("%s/hashicorp_cloud.hcl", local.repo_root)).locals
}

# Copy the first .tool-versions file found in the directory hierarchy when blueprint has none,
# otherwise skip and use one defined in blueprint.
# NOTE: requires ASDF-VM (https://asdf-vm.com)
generate "tool_versions" {
  path      = ".tool-versions"
  if_exists = "skip"
  contents  = file(find_in_parent_folders(".tool-versions"))
}

# Generate the HCP provider config
generate "hcp_provider" {
  path      = "_tg-hcp-provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
    provider "hcp" {
      project_id    = "${local.project_vars.project_id}"
      client_id     = "${local.project_vars.client_id}"
      client_secret = "${local.project_vars.client_secret}"
    }
  EOF
}

# Generate the Backend config
generate "backend" {
  path      = "_backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
    terraform {
      required_providers {
        hcp = {
          source  = "hashicorp/hcp"
          version = "~> 0.72.1"
        }
      }
    }
  EOF
}

retry_max_attempts       = 3
retry_sleep_interval_sec = 61

retryable_errors = [
  "(?s).*oauth2: cannot fetch token: 403 Forbidden.*",
  "(?s).*exceeded the rate limit of .*",
]

inputs = {
}
