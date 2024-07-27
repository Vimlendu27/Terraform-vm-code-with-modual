rgs = {
  rg1 = {
    name     = "vs_dev_rg"
    location = "poland central"
  }
}
vnets = {
  vnet = {
    name                = "vs_dev_vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "poland central"
    resource_group_name = "vs_dev_rg"
  }
}
subnets = {
  subnet1 = {
    name                 = "vs_dev_subnet"
    resource_group_name  = "vs_dev_rg"
    virtual_network_name = "vs_dev_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  # subnet2 = {
  #   name                 = "AzureBastionSubnet"
  #   resource_group_name  = "vs_dev_rg"
  #   virtual_network_name = "vs_dev_vnet"
  #   address_prefixes     = ["10.0.2.0/24"]
  # }
}
pip = {
  pip1 = {
    name                = "vs_dev_pip1"
    resource_group_name = "vs_dev_rg"
    location            = "poland central"
    allocation_method   = "Static"
    SKU                 = "Standard"
  }
  pip2 = {
    name                = "vs_dev_pip2"
    resource_group_name = "vs_dev_rg"
    location            = "poland central"
    allocation_method   = "Static"
    SKU                 = "Standard"
  }
  # pip3 = {
  #   name                = "Bastionpublicip"
  #   resource_group_name = "vs_dev_rg"
  #   location            = "poland central"
  #   allocation_method   = "Static"
  #   SKU                 = "Standard"
  # }
}
nic = {
  nic1 = {
    name                 = "vs_dev_nic1"
    location             = "poland central"
    resource_group_name  = "vs_dev_rg"
    virtual_network_name = "vs_dev_vnet"
    pipname              = "vs_dev_pip1"
    subnetname           = "vs_dev_subnet"
  }
  nic2 = {
    name                 = "vs_dev_nic2"
    location             = "poland central"
    resource_group_name  = "vs_dev_rg"
    virtual_network_name = "vs_dev_vnet"
    pipname              = "vs_dev_pip2"
    subnetname           = "vs_dev_subnet"
  }
}
nsg = {
  nsg = {
    name                = "vs_dev_nsg"
    location            = "poland central"
    resource_group_name = "vs_dev_rg"
  }
}
sr = {
  sr1 = {
    name                   = "SSH"
    priority               = "100"
    destination_port_range = "22"
  }
  sr2 = {
    name                   = "HTTP"
    priority               = "101"
    destination_port_range = "80"
  }
}
nsga = {
  nsga = {
    name                 = "vs_dev_nsga"
    virtual_network_name = "vs_dev_vnet"
    resource_group_name  = "vs_dev_rg"
    nsgname              = "vs_dev_nsg"
    subnetname           = "vs_dev_subnet"
  }
}
vm = {
  vm1 = {
    name                = "vs_dev_vm"
    resource_group_name = "vs_dev_rg"
    location            = "poland central"
    size                = "Standard_DS1_v2"
    admin_username      = "vimlendu27"
    admin_password      = "Vimlendu1997@"
    nicname             = "vs_dev_nic1"
    compute_rname       = "vimlenduVM"
  }
  vm2 = {
    name                = "vs_dev_vm2"
    resource_group_name = "vs_dev_rg"
    location            = "poland central"
    size                = "Standard_DS1_v2"
    admin_username      = "vimlendu26"
    admin_password      = "Vimlendu1997@"
    nicname             = "vs_dev_nic2"
    compute_rname       = "shekharVM"
  }
}
sqls = {
  sqls1 = {
    name                         = "vsdevsqlserver"
    resource_group_name          = "vs_dev_rg"
    location                     = "poland central"
    version                      = "12.0"
    administrator_login          = "vimlendu"
    administrator_login_password = "Vimlendu1997@"
  }
}
sqldb = {
  sqldb1 = {
    name                = "vs-dev-sqldatabase"
    resource_group_name = "vs_dev_rg"
    location            = "poland central"
    server_name         = "vsdevsqlserver"
  }
}
# bastionhost = {
#   bastionhost = {
#     name                 = "vs_dev_Bastion_Host"
#     resource_group_name  = "vs_dev_rg"
#     location             = "poland central"
#     virtual_network_name = "vs_dev_vnet"
#     subnetname           = "AzureBastionSubnet"
#     pipname              = "Bastionpublicip"
#   }
# }
keyvault = {
  keyvault = {
    name                = "shekharkeyvault"
    resource_group_name = "vs_dev_rg"
    location            = "poland central"
  }
}
