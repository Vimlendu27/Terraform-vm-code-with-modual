data "azurerm_resource_group" "todoapp_rgdatablock" {
  name = "rg-todoApp-vimlendu"
}

data "azurerm_virtual_network" "todoapp_vnetdatablock" {
  name                = "vnet-todoApp-vimlendu"
  resource_group_name = "rg-todoApp-vimlendu"
}

data "azurerm_public_ip" "todoapp_pipdatablock" {
  name                = "pip-lb-frontend"
  resource_group_name = data.azurerm_resource_group.todoapp_rgdatablock.name
}

data "azurerm_network_interface" "vminterface" {
  for_each            = var.vms
  name                = each.value.network_interface_name
  resource_group_name = data.azurerm_resource_group.todoapp_rgdatablock.name
}


# data "azurerm_lb" "todoapp_lbdatablock" {
#   name                = "lb-todoapp"
#   resource_group_name = data.azurerm_resource_group.todoapp_rgdatablock.name
# }