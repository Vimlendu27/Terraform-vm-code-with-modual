data "azurerm_network_interface" "nicdata" {
  for_each = var.vm
  name                = each.value.nicname
  resource_group_name = each.value.resource_group_name
}
resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.vm
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "Rattukumar@989153"
  computer_name       = "RatanVM"
  network_interface_ids = [data.azurerm_network_interface.nicdata[each.key].id]
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}