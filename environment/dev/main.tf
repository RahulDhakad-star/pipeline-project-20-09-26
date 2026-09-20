module "resource_group" {
    source = "../../az-resources/RGs"
    az-rg = var.dev-rgs
}

module "virtual-network" {
    depends_on = [ module.resource_group ]
    source = "../../az-resources/vnets"
    az-vnet = var.dev-vnet
  
}
module "subnet" {
    depends_on = [ module.virtual-network ]
    source = "../../az-resources/subnet"
    az-subnet = var.dev-subnet
}