# these first 3 would be reused for
# the image version data source
# in another terraform configuration (scale sets)
variable "gallery_rg_name" {
  description = "The resource group the Key Vault shold be placed"
  type        = string
}
variable "gallery_name" {
  description = "The resource group the Key Vault shold be placed"
  type        = string
}
variable "image_name" {
  description = "The resource group the Key Vault shold be placed"
  type        = string
}
# publisher and offer stay the same always
variable "image_publisher" {
  description = "The resource group the Key Vault shold be placed"
  type        = string
}
variable "image_offer" {
  description = "The resource group the Key Vault shold be placed"
  type        = string
}
# sku is different for each project
variable "image_sku" {
  description = "The resource group the Key Vault shold be placed"
  type        = string
}
