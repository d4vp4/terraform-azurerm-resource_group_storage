# Azure Resource Group & Storage Account Module

This Terraform module deploys an Azure Resource Group and an Azure Storage Account.

## Usage

```hcl
module "rg_storage" {
  source  = "d4vp4/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "my-app-rg"
  location             = "westeurope"
  storage_account_name = "myappstorageacct123"
}

**`LICENSE`**
*(Create a standard MIT License file. You can usually select this from a dropdown when creating the repo in the GitHub UI).*

**Pushing the code:**
```bash
git init
git add .
git commit -m "Initial commit of resource group and storage account module"
git branch -M main
git remote add origin https://github.com/d4vp4/terraform-azurerm-resource_group_storage.git
git push -u origin main
Step 4: Publish the Module to Terraform Registry
The Terraform Registry requires a Git Tag (semantic versioning) to recognize your release.

Tag your code in the terminal:

Bash
git tag v1.0.0
git push origin v1.0.0
Go to the Terraform Registry.

Click Sign in and authorize with your GitHub account.

Click Publish -> Module.

Select your terraform-azurerm-resource_group_storage repository from the list.

Click Publish Module. The registry will automatically read your v1.0.0 tag.

Step 5: Use the Module from Terraform Registry
Now, go back to your original repository (from Step 1) or a new testing directory. Create a root main.tf to consume the module you just published.

main.tf

Terraform
provider "azurerm" {
  features {}
}

module "my_infrastructure" {
  # Replace with your actual GitHub username
  source  = "d4vp4/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "task-module-rg"
  location             = "East US"
  # Storage accounts must be globally unique! Change the suffix if needed.
  storage_account_name = "taskmoduledevstorage001" 
}
Run standard Terraform commands to verify:

Bash
terraform init
terraform plan
terraform apply
Step 6: Pull Request Description
When you create your Pull Request in your main repository to submit the assignment, use a description formatted like this:

PR Title: feat: implement Azure RM resource group and storage module

PR Description:

Markdown
## Description
This PR implements the requested Terraform module for creating an Azure Resource Group and Storage Account. 

The module has been successfully decoupled, versioned, and published to the Terraform Registry. This PR updates the root configuration to consume the newly published module `v1.0.0`.

## Module Registry Link
- [Terraform Registry: AzureRM Resource Group Storage](https://registry.terraform.io/modules/d4vp4/resource_group_storage/azurerm/1.0.0)

## Workflow Run
**Successful Terraform Plan/Apply:** [Link to the successful GitHub Actions workflow run here]