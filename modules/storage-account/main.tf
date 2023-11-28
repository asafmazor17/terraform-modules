resource "azurerm_resource_group" "rg" {
  count    = var.resource_group_name == "" ? 0 : 1
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_name
  resource_group_name      = local.resource_group_name
  location                 = local.location_modified
  account_tier             = local.tier
  account_replication_type = "LRS"

  depends_on = [azurerm_resource_group.rg]
}