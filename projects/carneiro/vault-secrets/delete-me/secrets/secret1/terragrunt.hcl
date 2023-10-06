include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_repo_root()}//_modules/vault-secrets/secret"
}

dependency "app" {
  config_path = "../../_definition/"
}

inputs = {
  app_name    = dependency.app.outputs.app_name
  secret_name = "secret1"
  secret_value = jsonencode({
    foo = "bar"
  })
}
