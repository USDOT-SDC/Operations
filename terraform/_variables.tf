locals {
  common = merge(
    yamldecode(file("../../operations-secrets/common.yaml")),
    yamldecode(file("../../operations-secrets/common-${nonsensitive(data.aws_ssm_parameter.environment.value)}.yaml")),
    {
      environment = nonsensitive(data.aws_ssm_parameter.environment.value)
      network = {
        vpc                    = data.aws_vpc.default
        security_group_default = data.aws_security_group.default
        subnet_support         = data.aws_subnet.support
        subnet_researcher      = data.aws_subnet.researcher
        subnet_infra_3         = data.aws_subnet.infrastructure_3
        subnet_infra_4         = data.aws_subnet.infrastructure_4
        subnet_infra_5         = data.aws_subnet.infrastructure_5
        subnet_infra_6         = data.aws_subnet.infrastructure_6
        subnet_infra_ids = [
          data.aws_subnet.infrastructure_3.id,
          data.aws_subnet.infrastructure_4.id,
          data.aws_subnet.infrastructure_5.id,
          data.aws_subnet.infrastructure_6.id,
        ]
      }

    },
  )
}
