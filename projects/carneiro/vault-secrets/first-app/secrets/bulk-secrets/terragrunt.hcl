include {
  path = find_in_parent_folders()
}

dependency "app" {
  config_path = "../../_definition/"
}

inputs = {
  secrets = [
    for s in range(1, 120) :

    {
      app_name    = dependency.app.outputs.app_name
      secret_name = format("secret%03d", s)
      secret_value = jsonencode({
        foo         = "bar"
        some_number = s
      })
    }
  ]

}
