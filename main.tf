provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "d4vp4/resource_group_storage/azurerm"
  version = "2.0.0"

  resource_group_name  = "rg-my-task-client"
  location             = "East US"
  storage_account_name = "taskclientstorage2026"
}