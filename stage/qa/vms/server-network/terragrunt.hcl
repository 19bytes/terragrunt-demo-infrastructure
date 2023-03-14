# ---------------------------------------------------------------------------------------------------------------------
# Include configurations that are common used across multiple environments.
# ---------------------------------------------------------------------------------------------------------------------

# Include the root `terragrunt.hcl` configuration. The root configuration contains settings that are common across all
# components and environments, such as how to configure remote state.
include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "git::git@github.com:19bytes/terragrunt-demo.git//hcloud/server-network?ref=hcloud-modules"
}

dependency "server" {
  config_path = "../server"
}

dependency "subnet" {
  config_path = "../network-subnet"
}

inputs = {
  srvnetwork_server_id = dependency.server.outputs.id
  srvnetwork_subnet_id = dependency.subnet.outputs.id
}