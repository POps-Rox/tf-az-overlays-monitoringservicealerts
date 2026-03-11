# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

locals {
  resource_group_name = element(
    coalescelist(
      data.azurerm_resource_group.rgrp[*].name,
      module.mod_scaffold_rg[*].resource_group_name,
      [""]
    ),
    0
  )
}
