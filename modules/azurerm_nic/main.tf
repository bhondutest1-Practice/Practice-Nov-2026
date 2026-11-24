
data "azurerm_subnet" "NIC" {
  for_each             = var.NIC
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

resource "azurerm_network_interface" "NIC" {
  for_each            = var.NIC
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.NIC[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}