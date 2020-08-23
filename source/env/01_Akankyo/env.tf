variable "region" {}

// リソース・マネージャに配置することで自動補完される
variable "tenancy_ocid" {}

provider "oci" {
	region = "ap-tokyo-1"
}

terraform {
	required_version = "~> 0.12"
}