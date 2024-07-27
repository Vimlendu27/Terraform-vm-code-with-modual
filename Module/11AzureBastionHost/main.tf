resource "azurerm_bastion_host" "bastion_host" {
  for_each = var.bastionhost
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnetdata[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pipdata[each.key].id
  }
}
data "azurerm_subnet" "subnetdata" {
  for_each = var.bastionhost
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "pipdata" {
  for_each = var.bastionhost
  name                = each.value.pipname
  resource_group_name = each.value.resource_group_name
}