# ---------------------------------------------------------------------------------------------------------------------
# Include configurations that are common used across multiple environments.
# ---------------------------------------------------------------------------------------------------------------------

# Include the root `terragrunt.hcl` configuration. The root configuration contains settings that are common across all
# components and environments, such as how to configure remote state.
include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "git::git@github.com:19bytes/terragrunt-demo.git//hcloud/server?ref=hcloud-modules"
}

dependency "pg" {
  config_path = "../placement-group"
}

inputs = {
  server_name = "database"
  server_image = "ubuntu-22.04"
  server_location = "nbg1"
  server_placement_group = dependency.pg.outputs.name
}