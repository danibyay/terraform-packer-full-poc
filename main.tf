data "azurerm_resource_group" "gallery-rg" {
  name = "dani-resource-group"
}

data "azurerm_shared_image_gallery" "myGallery" {
  name                = "winGallery"
  resource_group_name = data.azurerm_resource_group.gallery-rg.name
}

resource "azurerm_shared_image" "first_image_def" {
  name                = "test-image-1"
  gallery_name        = data.azurerm_shared_image_gallery.myGallery.name
  resource_group_name = data.azurerm_resource_group.gallery-rg.name
  location            = data.azurerm_resource_group.gallery-rg.location
  os_type             = "Windows"

  identifier {
    publisher = "DanielaBG"
    offer     = "WindowsServer"
    sku       = "Example1234"
  }
}
