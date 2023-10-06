locals {
  project_name  = "carneiro"
  project_id    = "afaa2972-c2c7-445c-be4d-9f8b75b3e634"
  client_id     = get_env(format("HCP_CLIENT_ID_%s", upper(local.project_name)))
  client_secret = get_env(format("HCP_CLIENT_SECRET_%s", upper(local.project_name)))
}
