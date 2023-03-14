# ---------------------------------------------------------------------------------------------------------------------
# Include configurations that are common used across multiple environments.
# ---------------------------------------------------------------------------------------------------------------------

# Include the root `terragrunt.hcl` configuration. The root configuration contains settings that are common across all
# components and environments, such as how to configure remote state.
include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "git::git@github.com:19bytes/terragrunt-demo.git//hcloud/network?ref=hcloud-modules"
}

inputs = {
  # placement_group_type = "spread"
  network_name_prefix = "vms"
  network_name_suffix = "01"
  network_ip_range = "10.0.1.0/24"
}