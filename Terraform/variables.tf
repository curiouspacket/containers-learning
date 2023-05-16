variable "cidr_block" {
  description = "value"
  type = string
  default = "10.190.0.0/16"
}

variable "az_count" {
  description = "value"
  type = string
  default = "2"
}
variable "environment" {
  description = "value"
  type = string
  default = "stage"
}
variable "name" {
  description = "value"
  type = string
  default = "stage"
}
variable "region" {
  type = string
}