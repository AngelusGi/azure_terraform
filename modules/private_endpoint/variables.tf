variable "private_endpoint_name" {
  description = "The name of the private endpoint"
  type        = string
}

variable "location" {
  description = "The location where the private endpoint will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "private_service_connection_name" {
  description = "The name of the private service connection"
  type        = string
}

variable "private_connection_resource_id" {
  description = "The resource ID of the private connection"
  type        = string
}

variable "is_manual_connection" {
  description = "Specifies if the connection is manual"
  type        = bool
  default     = false
}

variable "subresource_names" {
  description = "The names of the subresources"
  type        = list(string)
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = null
}

variable "private_dns_zone_group_name" {
  description = "The name of the private DNS zone group"
  type        = string
}

variable "private_dns_zone_group_id" {
  description = "The IDs of the private DNS zones"
  type        = list(string)
}

variable "role_definition_name" {
  description = "The name of the role definition to assign to the private endpoint"
  default     = "Contributor"
  type        = string
}

variable "role_scope" {
  description = "The scope at which the role assignment applies"
  type        = string
}

variable "object_id" {
  description = "The object ID to assign the role to"
  type        = string
  default     = null
}
