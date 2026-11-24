RG = {
  RG01 = {
    name     = "24112026-RG-Pre-Prod"
    location = "Central India"
  }
}

VNET = {
  VNET01 = {
    name                = "VNET-24112026-Pre-Prod"
    location            = "Central India"
    resource_group_name = "24112026-RG-Pre-Prod"
    address_space       = ["10.10.0.0/16"]
  }
}

SUBNET = {
  subnet01 = {
    name                 = "FE-Subnet-Pre-Prod"
    resource_group_name  = "24112026-RG-Pre-Prod"
    virtual_network_name = "VNET-24112026-Pre-Prod"
    address_prefixes     = ["10.10.1.0/24"]
  }
  subnet02 = {
    name                 = "BE-Subnet-Pre-Prod"
    resource_group_name  = "24112026-RG-Pre-Prod"
    virtual_network_name = "VNET-24112026-Pre-Prod"
    address_prefixes     = ["10.10.2.0/24"]
  }
  subnet03 = {
    name                 = "DB-Subnet-Pre-Prod"
    resource_group_name  = "24112026-RG-Pre-Prod"
    virtual_network_name = "VNET-24112026-Pre-Prod"
    address_prefixes     = ["10.10.3.0/24"]
  }
}

NIC = {
  NIC01 = {
    name                 = "FE-VM-NIC-Pre-Prod"
    location             = "Central India"
    resource_group_name  = "24112026-RG-Pre-Prod"
    subnet_name          = "FE-Subnet-Pre-Prod"
    virtual_network_name = "VNET-24112026-Pre-Prod"
  }
  NIC02 = {
    name                 = "BE-VM-NIC-Pre-Prod"
    location             = "Central India"
    resource_group_name  = "24112026-RG-Pre-Prod"
    subnet_name          = "BE-Subnet-Pre-Prod"
    virtual_network_name = "VNET-24112026-Pre-Prod"
  }
}