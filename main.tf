# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}
# The configuration for the `remote` backend.
     terraform {
  backend "remote" {
    organization = "satya136"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

# create resource group
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
