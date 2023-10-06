include {
  path = find_in_parent_folders()
}

dependency "app" {
  config_path = "../../definition/"
}

inputs = {
  app_name    = dependency.app.outputs.app_name
  secret_name = "secret1"
  secret_value = jsonencode({
    foo = "bar"
  })
}
