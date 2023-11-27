resource "azurerm_resource_group" "rg" {
    count = var.resource_group_name == "" ? 0 : 1
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_key_vault" "kv" {
    name = var.kv_name
    location = local.location_modified
    resource_group_name = local.resource_group_name
    enabled_for_disk_encryption = true
    tenant_id = data.azurerm_client_config.current.tenant_id
    soft_delete_retention_days = 7
    purge_protection_enabled = false

    sku_name = local.tier

    depends_on = [ azurerm_resource_group.rg ]
}