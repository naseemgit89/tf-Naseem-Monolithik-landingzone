terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }
 
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mama1" {
  name     = "rg-dev"
  location = "East US"
}

resource "azurerm_storage_account" "mama" {
  name                     = "storage989unt10854509n1"
  resource_group_name      = azurerm_resource_group.mama.name
  location                 = azurerm_resource_group.mama.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
