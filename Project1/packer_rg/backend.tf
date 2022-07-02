terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstate28914"
      container_name       = "tfstate-packer-rg1"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}
