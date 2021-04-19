locals {
  vpc_name = terraform.workspace == "Dev" ? "javahome-dev" : "javahome-prod"
}

resource "aws_vpc" "my_vpc" {
  count            = terraform.workspace == "Dev" ? 0 : 1
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name        = local.vpc_name
    Environment = terraform.workspace
    Location    = "India"
  }
}
