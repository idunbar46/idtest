provider "azurerm" {
  version = "=2.0.0"
  features {}
}

#######################################################################
## Create Resource Group
#######################################################################

resource "azurerm_resource_group" "id-test-rg" {
  name     = "rgname"
  location = var.location

  tags = {
    environment = "my tag"
  }
}
