terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "int-kv-rg"
    storage_account_name = "asaftestrgst"
    container_name       = "test"
    key                  = "intstorage.tfstate"
  }
}

provider "azurerm" {
  tenant_id       = "8a8cf043-8edb-4a79-90fd-76e6b8b7027c"
  subscription_id = "4ab81f09-caaa-49ab-acbb-94f28a0efdd3"
  features {}
}