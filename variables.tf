variable "aws_region" {
  type        = string
  description = "region chosen"
  default     = "eu-west-3"
}
variable "enable_dns_hostnames" {
  type        = bool
  description = "dns enabled value"
  default     = true
}

variable "TF_LOG" {
  type    = bool
  default = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "vpc cidr block"
  default     = "10.0.0.0/16"

}
variable "vpc_public_subnet_cidr_block" {
  type        = list(string)
  description = "CIDR Block for subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}
variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public up address for instance"
  default     = true
}
variable "instance_type" {
  type        = string
  description = "Type for EC2 instance"
  default     = "t2.micro"
}
variable "company" {
  type        = string
  description = "company name"
  default     = "Globomantics"
}
variable "project" {
  type        = string
  description = "project name"
  #default = "dev"
}
variable "billing_code" {
  type        = string
  description = "billing code"
  #default = "54546"
}