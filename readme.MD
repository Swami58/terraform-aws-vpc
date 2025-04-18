# Custom AWS VPC Module

This module is developed for to create VPC. We are creating Following resources

* vpc
* Internet Gateway
* Internet and vpc attachement
* 2 public subnets
* 2 private subnets
* 2 Database subnets
* EIP
* Nat Gateway
* Public Route table
* Private Route table
* Database Route table
* Route table and subnet asociation
* routes in all tables
* Peering if required for user
* Routes of peering in requestor and acceptor VPC


# inputs
* project_name (Required): User should mention their project name. Type is string.
* environment (Optional): Default value is dev. Type is string.
* common_tags (Required): User should provide their tags related to their project. Type is map.
* vpc_cidr (Optional): Default value is 10.0.0.0/16. Type is string.
* enable_dns_hostnames (Optional): Default value is true. Type is bool.
* vpc_tags (Optional): Default value is empty. Type is map.
* igw_tags (Optional): Default value is empty. Type is map.
* public_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* public_subnet_cidr_tags (Optional): Default value is empty. Type is map.
* private_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* private_subnet_cidr_tags (Optional): Default value is empty. Type is map.
* database_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* database_subnet_cidr_tags (Optional): Default value is empty. Type is map.
* database_subnet_group_tags (Optional): Default value is empty. Type is map.
* nat_gateway_tags (Optional): Default value is empty. Type is map.
* public_route_table_tags (Optional): Default value is empty. Type is map.
* private_route_table_tags (Optional): Default value is empty. Type is map.
* database_route_table_tags (Optional): Default value is empty. Type is map.
* is_peering_required (Optional): Default value is false. Type is bool.
* acceptor_vpc_id (Optional): Default value is empty, default VPC ID would be taken. Type is string.
* vpc_peering_tags (Optional): Default value is empty. Type is map.

# Outputs
* vpc_id: VPC ID
* public_subnet_ids: A list of 2 public subnet IDS created.
* database_subnet_ids: A list of 2 database subnet IDS created.
* private_subnet_ids: A list of 2 private subnet IDS created.
* database_subnet_group_id: A database subnet group ID created.
* igw_id: internte gateway created.