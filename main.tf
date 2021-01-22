resource "aws_vpc" "default" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = true
  tags                             = var.tags
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.default.id
  tags   = merge(var.tags, { Name = "default-security-group" })
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags   = var.tags
}
