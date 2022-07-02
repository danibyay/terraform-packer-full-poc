#!/bin/bash

set -e

function add_tfvars_file() {
  echo "##[debug] Creating terraform.tfvars for scale set resources"
  cat <<EOF > "terraform.tfvars"
scaleset_rg          = "$scaleset_rg"
location             = "$location"
scaleset_vnet        = "$scaleset_vnet"
scaleset_subnet_name = "$scaleset_subnet_name"
scaleset_name        = "$scaleset_name"
vm_size              = "$vm_size"
os_disk_size         = "$os_disk_size"
gallery_rg_name      = "$gallery_rg_name"
gallery_name         = "$gallery_name"
image_name           = "$image_name"
image_version        = "$image_version"
EOF
}

add_tfvars_file
