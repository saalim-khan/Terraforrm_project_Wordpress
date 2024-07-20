variable "availability_zone" {
        type = string
        description = "availability zone"
        default = "ap-south-1a"
  
}
variable "vpc_name" {
        type = string
        description = "vpc name"
        default = "my-vpc-main"
  
}
variable "enable_dns_hostnames" {
  description = "Enable DNS Hostname"
  type        = bool
  default     = null
}

variable "enable_dns_support" {
        description = "Enable_dns_support"
        type = string
        default = null
  
}
variable "cidr" {
        description = "Enter the CIDR range required for VPC"
        type = string
        default = "192.168.0.0/16"
  
}


variable "IGW_tag" {
        description = "Mention Tag needs to be associated with internet gateway"
        type = string
        default = "tcw_igw"
  
}

variable "public_subnets_cidr_1" {
  description = "Cidr Blocks"
  type        = string
  default     = "192.168.1.0/24"
}
variable "public_subnets_cidr_2" {
  description = "Cidr Blocks"
  type        = string
  default     = "192.168.2.0/24"
}

variable "database_subnets_cidr_1" {
  description = "mention the CIDR block for database subnet"
  type = string
  default = "192.168.5.0/24"
}
variable "database_subnets_cidr_2" {
  description = "mention the CIDR block for database subnet"
  type = string
  default = "192.168.6.0/24"
}
variable "public_subnet_tag_1" {
  description = "Tag for public subnet"
  type        = string
  default     = "tcw_public_subnet_az_1a"
}
variable "public_subnet_tag_2" {
  description = "Tag for public subnet"
  type        = string
  default     = "tcw_public_subnet_az_1b"
}

variable "database_subnet_tag_1" {
  description = "Tag for Private Subnet"
  type        = string
  default     = "tcw_database_subnet_az_1a"
}
variable "database_subnet_tag_2" {
  description = "Tag for Private Subnet"
  type        = string
  default     = "tcw_database_subnet_az_1b"
}



variable "public_route_table_tag" {
  description = "Tag name for public route table"
  type        = string
  default     = "tcw_public_route_table"
}


variable "database_route_table_tag" {
  description = "Tage for database route table"
  type        = string
  default     = "tcw_database_route_table"
}