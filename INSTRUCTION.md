# Azure Resource Group and Storage Account Module

This Terraform module automates the creation of basic Azure infrastructure: a Resource Group and a Storage Account.

## Usage

```hcl
module "resource_group_storage" {
  source  = "d4vp4/resource_group_storage/azurerm"
  version = "2.0.0"
  resource_group_name  = "my-app-rg"
  location             = "East US"
  storage_account_name = "myappstorageacct123"
}
Inputs
resource_group_name

Description: The name of the resource group in Azure.

Type: string

Default: "example-resources"

location

Description: The Azure region where all resources will be created.

Type: string

Default: "East US"

storage_account_name

Description: The name of the storage account (must be globally unique).

Type: string

Default: "examplestorageaccount"

Outputs
resource_group_id

Description: The unique identifier of the created Resource Group.

storage_account_id

Description: The unique identifier of the created Storage Account.