
resource "azurerm_storage_container" "storage_container" {
    name                  = module.sst_cnt_name.naming_convention_output["${var.naming_convention_info.name}"].names.0
    storage_account_name  = var.storage_account_name
    container_access_type = var.container_access_type


# Dynamic objects
dynamic "metadata" {
    for_each = var.metadata
    content {
        name  = metadata.key
        value = metadata.value
    }
}

}

resource "azurerm_storage_blob" "storage_blob" {
  name                  = module.sst_blob_name.naming_convention_output["${var.naming_convention_info.name}"].names.0
  storage_account_name   = var.storage_account_name
  storage_container_name = azurerm_storage_container.storage_container.name
  type                   = var.blob_type
  #source                 = "some-local-file.zip"
}