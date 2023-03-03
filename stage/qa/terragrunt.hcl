terraform {
    source = "git::git@github.com:19bytes/terragrunt-demo.git//stage/qa?ref=v0.0.1"
}

inputs = {
  placement_group = "qa"
  placement_group_type = "spread"
}