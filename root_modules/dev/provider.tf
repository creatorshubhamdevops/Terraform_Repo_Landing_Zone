terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }

  backend "azurerm" {

    resource_group_name  = "rg-pearce"
    storage_account_name = "pearcestorage"
    container_name       = "tfstate-container"
    key                  = "tfstate"
  }
}

provider "azurerm" {
  features {}
}