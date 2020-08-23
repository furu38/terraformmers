data "oci_identity_compartments" "compartments1" {
	#Required
	compartment_id                    = var.tenancy_default
	compartment_id_in_subtree = true
}

resource "oci_identity_compartment" "compartment1" {
	for_each            = var.compartment_map
	name                 = each.value.name
	description         = each.value.description
	compartment_id = "${lookup(zipmap(data.oci_identity_compartments.compartments1.compartments.*.name, data.oci_identity_compartments.compartments1.compartments.*.id), each.value.compartment_name, var.tenancy_default)}"
}
