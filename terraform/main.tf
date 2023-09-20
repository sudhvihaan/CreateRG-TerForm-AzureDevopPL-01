terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }

}
  
terraform {
  backend "azurerm" {}
}
  
data "azurerm_client_config" "current" {}
  
resource "azurerm_resource_group" "tamopsrg" {
  name     = "tamops-tf"
  location = "uksouth"
}
