output "id" {
  description = "The ID of the private endpoint"
  value       = azurerm_private_endpoint.pe.id
}

output "ip_address" {
  description = "The private IP address of the private endpoint"
  value       = azurerm_private_endpoint.pe.private_service_connection[0].private_ip_address
}

output "fqdn" {
  description = "The FQDN of the private endpoint"
  value       = azurerm_private_endpoint.pe.private_service_connection[0].private_fqdn
}

output "nic_id" {
  description = "The network interface ID of the private endpoint"
  value       = azurerm_private_endpoint.pe.network_interface.id
}

output "nic_name" {
  description = "The network interface name of the private endpoint"
  value       = azurerm_private_endpoint.pe.network_interface.id
}

output "private_dns_zone_name" {
  description = "The private DNS zone configurations of the private endpoint"
  value       = azurerm_private_endpoint.pe.private_dns_zone_configs.name
}

output "private_dns_zone_id" {
  description = "The private DNS zone configurations of the private endpoint"
  value       = azurerm_private_endpoint.pe.private_dns_zone_configs.id
}

