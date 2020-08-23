variable "cmps" {}
variable "grps" {}

module "compartment" {
	source = "../../modules/01_compartment"
	compartment_map = var.cmps
	tenancy_default = var.tenancy_ocid
}

module "group" {
	source = "../../modules/02_group"
	group_map = var.grps
}

