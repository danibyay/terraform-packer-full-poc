# these first 3 would be reused for
# the image version data source
# in another terraform configuration (scale sets)
variable "gallery_rg_name" {
  description = "The resource group the gallery is located at"
  type        = string
}
variable "gallery_name" {
  description = "The name of the image gallery"
  type        = string
}
variable "image_name" {
  description = "The name of the image definition"
  type        = string
}
# publisher and offer stay the same always
variable "image_publisher" {
  description = "Image publisher (author)"
  type        = string
}
variable "image_offer" {
  description = "Image offer (OS)"
  type        = string
}
# sku is different for each project
variable "image_sku" {
  description = "Image SKU (unique id)"
  type        = string
}
