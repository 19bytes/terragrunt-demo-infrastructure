terraform {
    source = "git@github.com:19bytes/terragrunt-demo.git//dev?ref=v0.0.1"
}

inputs = {
  placement_group = "dev"
  placement_group_type = "spread"
}