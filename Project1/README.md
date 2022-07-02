# Packer template Project 1

This packer template is run by a Pipeline to create a Windows image with:

- chocolatey packages
- a workspace directory
- Java
- Az pwsh command line tool

It is a very simple image just as an example of how to use an ansible role with packer

Detailed preinstalled software specifications can be found in

        roles/project1-scale-set/tasks/main.yml

The image would be the base to create the **Scale Sets** deployment where custom needs pipeline runs.

This is instead of the the default azure devops _windows-latest_ host
