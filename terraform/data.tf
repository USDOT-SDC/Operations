data "aws_caller_identity" "current" {}

data "aws_ssm_parameter" "environment" {
  name = "environment"
}

data "aws_security_group" "default" {
  vpc_id = data.aws_vpc.default.id
  name   = "default"
}

data "aws_subnet" "support" {
  filter {
    name   = "tag:Name"
    values = ["Support Workstations"]
  }
}

data "aws_subnet" "researcher" {
  filter {
    name   = "tag:Name"
    values = ["Researcher Workstations"]
  }
}

data "aws_subnet" "infrastructure_3" {
  filter {
    name   = "tag:Name"
    values = ["Infrastructure 3"]
  }
}

data "aws_subnet" "infrastructure_4" {
  filter {
    name   = "tag:Name"
    values = ["Infrastructure 4"]
  }
}

data "aws_subnet" "infrastructure_5" {
  filter {
    name   = "tag:Name"
    values = ["Infrastructure 5"]
  }
}

data "aws_subnet" "infrastructure_6" {
  filter {
    name   = "tag:Name"
    values = ["Infrastructure 6"]
  }
}

