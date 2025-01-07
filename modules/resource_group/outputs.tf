output "rg_id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.rg.id
}

output "rg_name" {
  description = "The name of the Resource Group."
  value       = azurerm_resource_group.rg.name
}

output "rg_location" {
  description = "The location of the Resource Group."
  value       = azurerm_resource_group.rg.location
}

output "rg_tags" {
  description = "The tags of the Resource Group."
  value       = azurerm_resource_group.rg.tags
}
