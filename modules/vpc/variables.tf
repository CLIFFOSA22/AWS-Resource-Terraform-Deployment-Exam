variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC CIDR"
}

variable "PublicSubnet" {
  type        = string
  default     = "10.0.1.0/24"
  description = "Public Subnet CIDR"
}

variable "PrivateSubnet" {
  type        = string
  default     = "10.0.2.0/24"
  description = "Private Subnet CIDR"
}

variable "az1" {
  type        = string
  default     = "ca-central-1a"
  description = "Enter AZ 1"
}

variable "az2" {
  type        = string
  default     = "ca-central-1b"
  description = "Enter AZ 2"
}

variable "Route_table" {
  type        = string
  default     = "0.0.0.0/0"
  description = "Public route destination"

}

variable "Custom-IGW" {
  type        = string
  default     = "Custom-IGW"
  description = "Internet Gateway name"
}

variable "RT-IGW-Integration" {
  type        = string
  description = "Associating IGW to route table"
}

variable "aws_security_group" {
  type        = string
  default     = "0.0.0.0/0"
  description = "Allowed CIDR block"
}