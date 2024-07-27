module "rg" {
  source = "../../Module/1ResourceGroup"
  rgs    = var.rgs
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../Module/2Vnet"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../Module/3Subnet"
  subnets    = var.subnets
}
module "pip" {
  depends_on = [module.subnet]
  source     = "../../Module/4Pip"
  pip        = var.pip
}
module "nic" {
  depends_on = [module.pip]
  source     = "../../Module/5Nic"
  nic        = var.nic
}
module "nsg" {
  depends_on = [module.nic]
  source     = "../../Module/6Nsg"
  nsg        = var.nsg
  sr         = var.sr
}
module "nsga" {
  depends_on = [module.nsg]
  source     = "../../Module/7Nsga"
  nsga       = var.nsga
}
module "vm" {
  depends_on = [module.nic]
  source     = "../../Module/8Vm"
  vm         = var.vm
}
module "sqls" {
  depends_on = [module.vm]
  source     = "../../Module/9sqlserver"
  sqls       = var.sqls
}
module "sqldb" {
  depends_on = [module.sqls]
  source     = "../../Module/10sqldatabase"
  sqldb      = var.sqldb
}
# module "bastionhost" {
#   depends_on  = [module.subnet, module.pip]
#   source      = "../../Module/11AzureBastionHost"
#   bastionhost = var.bastionhost
# }
module "keyvault" {
  depends_on = [module.rg]
  source     = "../../Module/12Key Vault"
  keyvault   = var.keyvault
}