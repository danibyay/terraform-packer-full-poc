resource "azurerm_resource_group" "scaleset_rg" {
  name = var.scaleset_rg
  location = var.location
}

resource "azurerm_virtual_network" "scaleset_vnet" {
  name                = var.scaleset_vnet
  resource_group_name = azurerm_resource_group.scaleset_rg.name
  location            = azurerm_resource_group.scaleset_rg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "scaleset_subnet" {
  name                 = var.scaleset_subnet_name
  resource_group_name  = azurerm_resource_group.scaleset_rg.name
  virtual_network_name = azurerm_virtual_network.scaleset_vnet.name
  address_prefixes     = ["10.0.0.0/24"]
  service_endpoints    = [
    "Microsoft.KeyVault"
  ]
}

data "azurerm_shared_image_version" "robotics_image_from_gallery" {
  name                = var.image_version
  image_name          = var.image_name
  gallery_name        = var.gallery_name
  resource_group_name = var.gallery_rg_name
}

resource "azurerm_windows_virtual_machine_scale_set" "ms_common_latest_vmss" {
  name                = var.scaleset_name
  resource_group_name = azurerm_resource_group.scaleset_rg.name
  location            = azurerm_resource_group.scaleset_rg.location
  sku                 = var.vm_size 
  instances           = 2 # this will be overwritten when implemented in AzureDevops
  computer_name_prefix = "at"
  admin_password      = var.vm_admin_password
  admin_username      = "VMAdmin"
  overprovision = false
  timeouts { # this will be overwritten when implemented in AzureDevops
    create = "2h"
    delete = "1h"
  }

    lifecycle {
    ignore_changes = [
      # Ignore changes to instances, because Azure DevOps is going to
      # manage this setting automatically when using the scale set.
      instances,
      tags,
    ]
  }

  source_image_id =
  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadOnly"
    disk_size_gb         = var.os_disk_size
    # diff_disk_settings {
    #   option = "Local"
    # }
  }

  network_interface {
    name    = "${var.scaleset_name}-nic"
    primary = true

    ip_configuration {
      name      = var.scaleset_subnet_name
      primary   = true
      subnet_id = azurerm_subnet.scaleset_subnet.id
    }
  }
}
