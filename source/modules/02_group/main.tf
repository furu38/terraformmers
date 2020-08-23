resource "oci_identity_group" "group1" {
	for_each            = var.group_map
	name                 = each.value.name
	description         = each.value.description
}
