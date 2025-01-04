variable "resource_group_name" {
  description = "The name of the resource group in which to create the Key Vault."
  type        = string
}

variable "location" {
  description = "The location where the Key Vault will be created."
  type        = string
}

variable "name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "object_id" {
  description = "The Object ID of the service principal or user to assign the role to."
  type        = string
  default     = null
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = null
}

variable "sku_name" {
  description = "The SKU name of the Key Vault."
  type        = string
  default     = "standard"
}

variable "key_permissions" {
  description = "The list of key permissions to assign to the Key Vault."
  type        = list(string)
  default     = ["get", "list", "create"]
}

variable "secret_permissions" {
  description = "The list of secret permissions to assign to the Key Vault."
  type        = list(string)
  default     = ["get", "list", "create"]
}

variable "certificate_permissions" {
  description = "The list of certificate permissions to assign to the Key Vault."
  type        = list(string)
  default     = ["get", "list", "create"]
}

variable "purge_protection_enabled" {
  description = "Specifies whether purge protection is enabled for the Key Vault."
  type        = bool
  default     = true
}

variable "enable_rbac_authorization" {
  description = "Specifies whether RBAC authorization is enabled for the Key Vault."
  type        = bool
  default     = true
}

variable "soft_delete_retention_days" {
  description = "The number of days to retain soft deleted items in the Key Vault."
  type        = number
  default     = 7
}

variable "default_action" {
  description = "The default action to apply to network rules."
  type        = string
  default     = "Deny"
}

variable "bypass" {
  description = "Specifies which traffic can bypass the network rules."
  type        = string
  default     = "AzureServices"
}

variable "ip_rules" {
  description = "The list of IP rules to apply to the Key Vault."
  type        = list(string)
  default     = []
}

variable "virtual_network_subnet_ids" {
  description = "The list of virtual network subnet IDs to apply to the Key Vault."
  type        = list(string)
  default     = []
}

variable "role_definition_name" {
  description = "The name of the role definition to assign to the Key Vault."
  type        = string
  default     = "Reader"
}

variable "access_policies" {
  description = "A list of access policies to assign to the Key Vault."
  type = list(object({
    tenant_id               = string
    object_id               = string
    key_permissions         = list(string)
    secret_permissions      = list(string)
    certificate_permissions = list(string)
  }))
  default = []
}

variable "network_acls" {
  description = "Network ACLs to apply to the Key Vault."
  type = object({
    default_action             = string
    bypass                     = string
    ip_rules                   = list(string)
    virtual_network_subnet_ids = list(string)
  })
  default = null
}

variable "kv_app_roles" {
  description = "List of application roles for the Key Vault"
  type = list(object({
    object_id            = string
    role_definition_name = string
  }))
  default = []
}
