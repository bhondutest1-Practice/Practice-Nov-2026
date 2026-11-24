module "RG" {
  source = "../../modules/azurerm_resource_group"
  RG     = var.RG
}

module "VNET" {
  source     = "../../modules/azurerm_virtual_network"
  VNET       = var.VNET
  depends_on = [module.RG]
}