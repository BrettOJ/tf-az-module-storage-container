variable "storage_account_name" {
    description = "The name of the storage account."
}

variable "container_access_type" {
    type = string
    description = "The access type for the container."
    default     = "private"
}


variable "metadata" {
    type        = map(string)
    description = "A map of metadata to add to the container."
}

variable "blob_type" {
    type = string
    description = "The type of the blob to be created."
    default     = "Block"
}

variable "naming_convention_info" {
  type = map(string)
  description = "A map of naming convention info to be passed to the naming convention module."
}

variable "tags" {
    type        = map(string)
    description = "A mapping of tags to assign to the resource."
    default     = null
}

variable "containers" {
    type = map(string)
    description = "A map of containers to be created."
}