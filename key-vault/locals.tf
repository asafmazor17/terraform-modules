locals {

    existing_resource_group_name = var.environment == "dev" ? "int-kv-rg" : "prod-kv-rg"

    resource_group_name = var.resource_group_name == "" ? local.existing_resource_group_name : var.resource_group_name

    location_modified = upper(var.location)

    tier = var.environment == "dev" ? "standard" : var.environment == "production" ? "premium" : null


}