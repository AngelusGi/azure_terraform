resource "azurerm_key_vault" "kv" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = var.sku_name

  dynamic "access_policy" {
    for_each = var.access_policies
    content {
      tenant_id = access_policy.value.tenant_id
      object_id = access_policy.value.object_id

      key_permissions         = access_policy.value.key_permissions
      secret_permissions      = access_policy.value.secret_permissions
      certificate_permissions = access_policy.value.certificate_permissions
    }
  }

  purge_protection_enabled = var.purge_protection_enabled

  enable_rbac_authorization = var.enable_rbac_authorization

  soft_delete_retention_days = var.soft_delete_retention_days

  dynamic "network_acls" {
    for_each = var.network_acls != null ? [var.network_acls] : []
    content {
      default_action = network_acls.value.default_action
      bypass         = network_acls.value.bypass

      ip_rules                   = network_acls.value.ip_rules
      virtual_network_subnet_ids = network_acls.value.virtual_network_subnet_ids
    }
  }

  tags = var.tags != null ? var.tags : {}

}

resource "azurerm_role_assignment" "kv_app" {
  for_each             = var.kv_app_roles
  principal_id         = each.value.object_id
  role_definition_name = each.value.role_definition_name
  scope                = azurerm_key_vault.kv.id
}

resource "azurerm_role_assignment" "kv_creator" {
  scope                = azurerm_key_vault.kv.id
  role_definition_name = "Contributor"
  principal_id         = data.azurerm_client_config.current.object_id
}
