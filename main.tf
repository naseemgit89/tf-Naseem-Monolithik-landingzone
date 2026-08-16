provider "azurerm" {
use_oidc = true
  features {}
}


resource "azurerm_resource_group" "rg" {
  name= "rg-naseem1"
  location = "east us"
  
}
