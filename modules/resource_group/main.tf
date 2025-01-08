resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = var.tags != null ? var.tags : {}

  dynamic "managed_by" {
    for_each = var.managed_by != null ? [var.managed_by] : []
    content {
      managed_by = managed_by.value
    }
  }

}
