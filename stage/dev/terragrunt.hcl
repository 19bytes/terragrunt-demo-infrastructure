terraform {
    source = "git::git@github.com:19bytes/terragrunt-demo.git//stage/dev?ref=v0.0.1"
}

inputs = {
  placement_group = "dev"
  placement_group_type = "spread"
}