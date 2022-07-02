# terraform-packer-full-poc
Azure Project to create a packer image, and use it in a scale set provisioned by terraform

[![Build Status](https://dev.azure.com/A00343953/My%20First%20pipeline%20attempt/_apis/build/status/danibyay.terraform-packer-full-poc?branchName=main)](https://dev.azure.com/A00343953/My%20First%20pipeline%20attempt/_build/latest?definitionId=13&branchName=main)

Current progress:
- create an image definition in an existing Gallery on start

TODO:
- create resource group for image that will be created
- bring in packer stage
- add stage for creating scale sets
