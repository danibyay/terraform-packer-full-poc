#!/bin/bash

set -e

function add_tfvars_file() {
  echo "##[debug] Creating terraform.tfvars for image definition resource"
  cat <<EOF > "terraform.tfvars"
gallery_rg_name   = "$gallery_rg_name"
gallery_name      = "$gallery_name"
image_name        = "$image_name"
image_publisher   = "$image_publisher"
image_offer       = "$image_offer"
image_sku         = "$image_sku"
EOF
}

add_tfvars_file
