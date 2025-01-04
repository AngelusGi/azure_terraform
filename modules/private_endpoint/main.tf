resource "azurerm_private_endpoint" "pe" {
  name                = var.private_endpoint_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_dns_zone_group {
    name                 = var.private_dns_zone_group_name
    private_dns_zone_ids = var.private_dns_zone_group_id
  }

  private_service_connection {
    name                           = var.private_service_connection_name
    private_connection_resource_id = var.private_connection_resource_id
    is_manual_connection           = var.is_manual_connection
    subresource_names              = var.subresource_names
  }

  tags = var.tags != null ? var.tags : {}
}

resource "azurerm_role_assignment" "pe_rbac" {
  count = var.object_id != null ? 1 : 0

  principal_id         = var.object_id
  role_definition_name = var.role_definition_name
  scope                = var.role_scope

  depends_on = [azurerm_private_endpoint.pe]
}