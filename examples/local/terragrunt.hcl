include "provider" {
	path = find_in_parent_folders("provider.hcl")
}

terraform {
	source = "../.."
}

locals {
	Eth0SecurityGroupId = "sg-00000000000000000"
	Eth0SubnetId = "subnet-00000000000000000"
	Eth1SecurityGroupId = "sg-00000000000000001"
	Eth1SubnetId = "subnet-00000000000000001"
	Eth2SecurityGroupId = "sg-00000000000000002"
	Eth2SubnetId = "subnet-00000000000000002"
	PlacementGroupId = "pg-00000000000000000"
}

inputs = {
	Eth0SecurityGroupId = local.Eth0SecurityGroupId
	Eth0SubnetId = local.Eth0SubnetId
	Eth1SecurityGroupId = local.Eth1SecurityGroupId
	Eth1SubnetId = local.Eth1SubnetId
	Eth2SecurityGroupId = local.Eth2SecurityGroupId
	Eth2SubnetId = local.Eth2SubnetId
	PlacementGroupId = local.PlacementGroupId
}
