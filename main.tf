provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "rg" {
  name= "rg-naseem1"
  location = "east us"
  
}
