### PROJECT ###
variable "project_name" {
    type = string
  
}
variable "environment" {
    type = string
    default = "dev"

}
variable "common_tags" {
    type = map(string)
     
  
}
### vpc ###
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}
variable "vpc_tags" {
  type = map(string)
  default = {}
}
### IGW ###
variable "igw_tags" {
    type = map(string)
    default = {}
}
### public subnet s###
variable "public_subnet_cidrs" {
  type = list(string)
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet cidr"
  }   
}
variable "public_subnet_cidrs_tags" {
    type = map(string)
    default = {}
}
### private subnet ###
variable "private_subnet_cidrs" {
    type = list(string)
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "Please provide 2 valid Private cidrs"
    }
}
variable "private_subnet_cidrs_tags" {
    type = map(string)
    default = {}
  
}
### Database Subnets ###
variable "database_subnet_cidrs" {
    type = list(string)
    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "Please Provide 2 valid Database cidrs" 
    }
}
variable "database_subnet_cidrs_tags" {
    type = map(string)
    default = {}
}

### Nat Geateway ###
variable "nat_gateway_tags" {
    type = map(string)
    default = {}
  
}

### public route table ###
variable "public_route_table_tags" {
    type = map(string)
    default = {}
}

### Private route table ###
variable "private_route_table_tags" {
    type = map(string)
    default = {}
}

### Database route table ###
variable "database_route_table_tags" {
    type = map(string)
    default = {}
}

### peering ###
variable "is_peering_required" {
  type = bool
  default = false
}
variable "acceptor_vpc_id" {
    type = string
    default = ""
}
variable "vpc_peering_tags" {
    type = map(string)
    default = {}
}
variable "database_subnet_group_tags" {
    type = map(string)
    default = {}
}