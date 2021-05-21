provider "azurerm" {
  version = "=2.0.0"
  features {}
}

#######################################################################
## Create Resource Group
#######################################################################

resource "azurerm_resource_group" "id-test-rg" {
  name     = "id-test-rg"
  location = var.location

  tags = {
    environment = "my tag"
  }
}

#######################################################################
## Create Virtual Network
#######################################################################
resource "azurerm_virtual_network" "hub-vnet" {
  name                = var.hubname
  location            = var.location
  resource_group_name = id-test-rg.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    environment = "hub-spoke"
    deployment  = "terraform"
  }
}