module "vpc"  {
  source                = "github.com/nvrnagella/tf-module-vpc"
  env                   = var.env
  default_vpc_id        = var.default_vpc_id

  for_each              = var.vpc
  cidr_block            = each.value.cidr_block
  subnets               = each.value.subnets
  availability_zone    = each.value.availability_zone
}