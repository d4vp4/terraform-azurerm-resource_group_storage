provider "azurerm" {
  features {}
}

module "my_first_module" {
  source  = "d4vp4/simple-module/azurerm"
  version = "1.0.1"

  resource_group_name  = "rg-my-task-client"
  location             = "East US"
  storage_account_name = "taskclientstorage2026"
}