data "aws_vpc" "default" {
  tags = {
    Name = "Default"
  }
}
