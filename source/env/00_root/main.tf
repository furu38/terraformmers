variable "cmps" {}

module "compartment" {
	source = "../../modules/01_compartment"
	compartment1_maps = var.cmps
	tenancy_default = var.tenancy_ocid
}
