data "azurerm_resource_group" "gallery-rg" {
  name = var.gallery_rg_name
}

data "azurerm_shared_image_gallery" "myGallery" {
  name                = var.gallery_name
  resource_group_name = data.azurerm_resource_group.gallery-rg.name
}

resource "azurerm_shared_image" "first_image_def" {
  name                = var.image_name
  gallery_name        = data.azurerm_shared_image_gallery.myGallery.name
  resource_group_name = data.azurerm_resource_group.gallery-rg.name
  location            = data.azurerm_resource_group.gallery-rg.location
  os_type             = "Windows"

  identifier {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
  }
}
