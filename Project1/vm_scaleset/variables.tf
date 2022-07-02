variable "scaleset_rg" {
  description = "The resource group where the scale set should be placed"
  type        = string
}
variable "location" {
  description = "The location for the scale set"
  type        = string
}
variable "scaleset_vnet" {
  description = "The location for the scale set"
  type        = string
}
variable "scaleset_subnet_name" {
  description = "The location for the scale set"
  type        = string
}
variable "scaleset_name" {
  description = "The location for the scale set"
  type        = string
}
variable "vm_size" {
  description = "The location for the scale set"
  type        = string
}
variable "os_disk_size" {
  description = "The location for the scale set"
  type        = string
}
variable "vm_admin_password" {
  description = "The location for the scale set"
  type        = string
  sensitive   = true
}
##### Image data source related variables
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
variable "image_version" {
  description = "The version of the image built"
  type        = string
}
