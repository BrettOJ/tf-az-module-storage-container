#storage account container name
module "sst_cnt_name" {
 source      = "git::https://github.com/BrettOJ/tf-az-module-naming-convention?ref=main"
  name_format = "res_type|-|project_code|-|env|zone|tier|-|name"
  naming_convention_info = {
    for key, value in var.containers :
    "${key}" => {
      name_info = merge(var.naming_convention_info, { name = key })
      tags      = var.tags
    }
  }
  resource_type = "ctn"
}

module "sst_blob_name" {
 source      = "git::https://github.com/BrettOJ/tf-az-module-naming-convention?ref=main"
  name_format = "res_type|-|project_code|-|env|zone|tier|-|name"
  naming_convention_info = {
    for key, value in var.containers :
    "${key}" => {
      name_info = merge(var.naming_convention_info, { name = key })
      tags      = var.tags
    }
  }
  resource_type = "blob"
}