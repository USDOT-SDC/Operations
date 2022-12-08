module "common-pipelines_waze" {
  source = "./common-pipelines/waze"
  common = local.common
}

module "research-team" {
  count  = length(yamldecode(file("../../operations-secrets/research-team/research-teams.yaml")))
  source = "./research-team"
  common = local.common
  team   = yamldecode(file("../../operations-secrets/research-team/research-teams.yaml"))[count.index]
}
