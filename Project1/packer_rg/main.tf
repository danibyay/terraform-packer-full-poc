resource "azurerm_resource_group" "packer-rg" {
  name     = var.packer_rg_name
  location = "East US"
}