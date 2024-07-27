data "azurerm_subnet" "subnetdata" {
    for_each = var.nic
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "pipdata" {
    for_each = var.nic
  name                = each.value.pipname
  resource_group_name = each.value.resource_group_name
}
resource "azurerm_network_interface" "nicblock" {
    for_each = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnetdata[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pipdata[each.key].id
  }
}

