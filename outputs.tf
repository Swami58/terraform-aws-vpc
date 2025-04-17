#output "azs" {
#   value = data.aws_availability_zones.available.names
#}
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_list" {
  value = module.vpc.public_subnet_ids
}

output "igw_id" {
  value = module.vpc.igw_id
}