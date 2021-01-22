variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "instance_tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults: true"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults: true"
  default     = true
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to assign to the resource"
}
