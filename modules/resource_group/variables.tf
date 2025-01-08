variable "location" {
  description = "The location where the Resource Group will be created."
  type        = string
}

variable "name" {
  description = "The name of the Resource Group."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = null
}

variable "managed_by" {
  description = "The entity that manages the resource."
  type        = string
  default     = null
}
