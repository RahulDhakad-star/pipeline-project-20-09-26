dev-rgs = {
    rg-1 = {
  name     = "dev-rg"
  location = "Centralindia"
}
}

dev-vnet = {
    vnet-1 = {
  name                = "dev-vnet"
  location            = "Centralindia"
  resource_group_name = "dev-rg"
  address_space       = ["10.11.0.0/16"]
}
}
dev-subnet = {
    subnet-1 = {
  name                 = "dev-subnet-1"
  resource_group_name  = "dev-rg"
  virtual_network_name = "dev-vnet"
  address_prefixes     = ["10.11.1.0/24"]

}
}
