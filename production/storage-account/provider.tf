terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.27.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "prod-kv-rg"
  #   storage_account_name = "testingstoragee"
  #   container_name       = "state"
  #   key                  = "prodstorage.tfstate"
  # }
}

provider "azurerm" {
  tenant_id       = "8a8cf043-8edb-4a79-90fd-76e6b8b7027c"
  subscription_id = "e9666bbf-19a5-4a45-87d5-d0557f976d9b"
  features {}
}