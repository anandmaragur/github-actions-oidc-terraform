terraform {

  required_version = ">=1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.7.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-resource-group"
    storage_account_name = "tfstrgact2"
    container_name       = "caf-tf-state"
    key                  = "goverance/tfstate"
  }
}

provider "azurerm" {
  features {}
}
