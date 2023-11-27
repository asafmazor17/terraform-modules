locals {
    resource_group_name = var.resource_group_name == "" ? var.existing_resource_group_name : var.resource_group_name

    location_modified = upper(var.location)

    tier = var.environment == "dev" ? "standard" : var.environment == "production" ? "premium" : null

    
}