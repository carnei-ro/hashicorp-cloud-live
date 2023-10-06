include {
  path = find_in_parent_folders()
}
terraform {
  source = "${get_repo_root()}//_modules/vault-secrets/app"
}

inputs = {
  app_name = "delete-me"
}
