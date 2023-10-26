# Variable fiel for an Azure Storage Account

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the storage account"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists"
  default = "southeastasia"
}


variable "account_kind" {
  type = string
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2"
  default = "StorageV2"
}

variable "account_tier" {
  type = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid"
  default = "Standard"
}

variable "account_replication_type" {
  type = string
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  default = "LRS"
}

variable "cross_tenant_replication_enabled" {
  type = bool
  description = "Should cross Tenant replication be enabled?"
  default = true
}

variable "access_tier" {
  type = string
  description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot"
  default = "Hot"
}

variable "edge_zone" {
  type = string
  description = "Specifies the Edge Zone within the Azure Region where this Storage Account should exist"
  default = null
}

variable "enable_https_traffic_only" {
  type = bool
  description = "Boolean flag which forces HTTPS if enabled, see here for more information"
  default = true
}

variable "min_tls_version" {
  type = string
  description = "The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_2 for new storage accounts"
  default = "TLS1_2"
}

variable "allow_nested_items_to_be_public" {
  type = bool
  description = "Allow or disallow nested items within this Account to opt into being public. Defaults to true"
  default = true
}

variable "shared_access_key_enabled" {
  type = bool
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is true"
  default = true
}

variable "public_network_access_enabled" {
  type = bool
  description = "Whether the public network access is enabled? Defaults to true"
  default = true
}

variable "default_to_oauth_authentication" {
  type = bool
  description = "Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is false"
  default = false
}

variable "is_hns_enabled" {
  type = bool
  description = "Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 (see here for more information)"
  default = false
}

variable "nfsv3_enabled" {
  type = bool
  description = "Is NFSv3 protocol enabled?"
  default = false
}

variable "large_file_share_enabled" {
  type = bool
  description = "Is Large File Share Enabled?"
  default = false
}   

variable "queue_encryption_key_type" {
  type = string
  description = "The encryption type of the queue service. Possible values are Service and Account. Changing this forces a new resource to be created. Default value is Service"
  default = "Service"
}

variable "table_encryption_key_type" {
  type = string
  description = "The encryption type of the table service. Possible values are Service and Account. Changing this forces a new resource to be created. Default value is Service"
  default = "Service"
}

variable "infrastructure_encryption_enabled" {
  type = bool
  description = "Is infrastructure encryption enabled? Defaults to false"
  default = false
}

variable "allowed_copy_scope" {
  type = string
  description = "Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are AAD and PrivateLink"
  default = null
}

variable "sftp_enabled" {
  type = bool
  description = "Boolean, enable SFTP for the storage account"
  default = false
}

variable "tags" {
  type = map(string)
  description = "A mapping of tags to assign to the resource"
  default = {}
}

variable "blob_propertie_cors_rule_allowed_headers" {
  type = list(string)
  description = "The list of headers allowed for this CORS rule"
  default = null
}

variable "blob_properties_cors_rule_allowed_methods" {
  type = list(string)
  description = "The list of HTTP methods allowed to be executed by the origin"
  default = null
}

variable "blob_properties_cors_rule_allowed_origins" {
  type = list(string)
  description = "The list of origin domains that will be allowed via CORS"
  default = null
}

variable "blob_properties_cors_rule_exposed_headers" {
  type = list(string)
  description = "The list of response headers to expose to CORS clients"
  default = null
}

variable "blob_properties_cors_rule_max_age_in_seconds" {
  type = number
  description = "The number of seconds the client should cache a preflight response"
  default = null
}

variable "blob_properties_delete_retention_policy_days" {
  type = number
  description = "The number of days that the deleted blob should be retained. A value of 0 means that blob soft delete is disabled"
  default = null
}

variable "blob_properties_versioning_enabled" {
  type = bool
  description = "Boolean flag which enables versioning on this blob container"
  default = null
}

variable "blob_properties_change_feed_enabled" {
  type = bool
  description = "Boolean flag which enables the change feed event log for this blob container"
  default = null
}

variable "blob_properties_change_feed_retention_in_days" {
  type = number
  description = "The number of days that the change feed should retain entries. A value of 0 means that change feed is disabled"
  default = null
}

variable "blob_properties_default_service_version" {
  type = string
  description = "The default version to use for requests to this blob container"
  default = null
}

variable "blob_properties_last_access_time_enabled" {
  type = bool
  description = "Boolean flag which enables last access time tracking for this blob container"
  default = null
}

variable "blob_properties_container_delete_retention_policy_days" {
  type = number
  description = "The number of days that the deleted container should be retained. A value of 0 means that container soft delete is disabled"
  default = null
}
  
variable "custom_domain_name" {
  type = string
  description = "The custom domain name to use for this storage account"
  default = null
}

variable "custom_domain_use_subdomain" {
  type = bool
  description = "Boolean flag which indicates whether indirect CNAME validation is enabled"
  default = null
}

variable "customer_managed_key_key_vault_key_id" {
  type = string
  description = "The Key Vault Key Id for the customer managed key to use for encryption"
  default = null
}

variable "customer_managed_key_user_assigned_identity_id" {
  type = string
  description = "The User Assigned Identity ID for the customer managed key to use for encryption"
  default = null
}

variable "delete_retention_policy_days" {
    type = number
    description = "The number of days that the deleted blob should be retained. A value of 0 means that blob soft delete is disabled"
    default = null
}

variable "restore_policy_days" {
    type = number
    description = "The number of days that the deleted blob should be retained. A value of 0 means that blob soft delete is disabled"
    default = null
}

variable "container_delete_retention_policy_days" {
    type = number
    description = "The number of days that the deleted blob should be retained. A value of 0 means that blob soft delete is disabled"
    default = null
}

variable "blob_properties_restore_policy_days" {
  type = number
  description = "The number of days that the deleted blob should be retained. A value of 0 means that blob soft delete is disabled"
  default = null
}

variable "hours_metrics_enabled" {
    type = bool
    description = "Boolean flag which enables hour metrics for this blob container"
    default = null
}

variable "hours_metrics_version" {
    type = string
    description = "The version of hour metrics to use for this blob container"
    default = null
}

variable "hours_metrics_include_apis" {
    type = bool
    description = "Boolean flag which indicates whether to include API calls in hour metrics"
    default = null
}

variable "hours_metrics_retention_policy_days" {
    type = number
    description = "The number of days that the hour metrics should retain data for"
    default = null
}

variable "identity_type" {
  type = string
  description = "The type of identity to use for this storage account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned and None"
  default = null
}

variable "identity_identity_ids" {
  type = list(string)
  description = "A list of User Assigned Identity IDs to use for this storage account"
  default = null
}

variable "immutability_policy_allow_protected_append_writes" {
    type = bool
    description = "Boolean flag which indicates whether protected append writes are allowed"
    default = null
}

variable "immutability_policy_state" {
    type = string
    description = "The state of the immutability policy. Possible values are Locked and Unlocked"
    default = null
}

variable "immutability_policy_period_since_creation_in_days" {
    type = number
    description = "The number of days that the immutability policy should retain data for"
    default = null
}



variable "logging_delete" {
    type = bool
    description = "Boolean flag which indicates whether to log delete requests"
    default = null
}

variable "logging_read" {
    type = bool
    description = "Boolean flag which indicates whether to log read requests"
    default = null
}

variable "logging_version" {
    type = string
    description = "The version of storage analytics to use for this blob container"
    default = null
}

variable "logging_write" {
    type = bool
    description = "Boolean flag which indicates whether to log write requests"
    default = null
}

variable "logging_retention_policy_days" {
    type = number
    description = "The number of days that the logging data should retain data for"
    default = null
}

variable "minute_metrics_enabled" {
    type = bool
    description = "Boolean flag which enables minute metrics for this blob container"
    default = null
}

variable "minute_metrics_version" {
    type = string
    description = "The version of minute metrics to use for this blob container"
    default = null
}

variable "minute_metrics_include_apis" {
    type = bool
    description = "Boolean flag which indicates whether to include API calls in minute metrics"
    default = null
}

variable "minute_metrics_retention_policy_days" {
    type = number
    description = "The number of days that the minute metrics should retain data for"
    default = null
}

variable "network_rules_bypass" {
    type = list(string)
    description = "The bypass rules for the network"
    default = null
}

variable "network_rules_default_action" {
    type = string
    description = "The default action for the network"
    default = null
}

variable "network_rules_ip_rules" {
    type = list(string)
    description = "The IP rules for the network"
    default = null
}

variable "network_rules_virtual_network_subnet_ids" {
    type = list(string)
    description = "The virtual network subnet IDs for the network"
    default = null
}

variable "network_rules_private_link_access_endpoint_resource_id" {
    type = string
    description = "The resource ID of the private link endpoint"
    default = null
}

variable "network_rules_private_link_access_endpoint_tenant_id" {
    type = string
    description = "The tenant ID of the private link endpoint"
    default = null
}


variable "azure_files_authentication_directory_type" {
    type = string
    description = "The type of directory to use for Azure Files authentication. Possible values are None, AAD and AADDS"
    default = null
}

variable "azure_files_authentication_active_directory_storage_sid" {
    type = string
    description = "The security identifier (SID) for Azure Files authentication"
    default = null
}

variable "azure_files_authentication_active_directory_domain_name" {
    type = string
    description = "The domain name for Azure Files authentication"
    default = null
}

variable "azure_files_authentication_active_directory_domain_sid" {
    type = string
    description = "The domain SID for Azure Files authentication"
    default = null
}

variable "azure_files_authentication_active_directory_domain_guid" {
    type = string
    description = "The domain GUID for Azure Files authentication"
    default = null
}

variable "azure_files_authentication_active_directory_forest_name" {
    type = string
    description = "The forest name for Azure Files authentication"
    default = null
}

variable "azure_files_authentication_active_directory_netbios_domain_name" {
    type = string
    description = "The NetBIOS domain name for Azure Files authentication"
    default = null
  
}

variable "routing_choice" {
    type = string
    description = "The routing choice for this storage account. Possible values are MicrosoftRouting, InternetRouting and InternetRoutingWithBlobsLast"
    default = null
  
}

variable "routing_publish_internet_endpoints" {
    type = bool
    description = "Boolean flag which indicates whether to publish internet endpoints"
    default = null
  
}

variable "routing_publish_microsoft_endpoints" {
    type = bool
    description = "Boolean flag which indicates whether to publish Microsoft endpoints"
    default = null
  
}

variable "queue_properties_cors_rule_allowed_headers" {
    type = list(string)
    description = "The list of headers allowed for this CORS rule"
    default = null
}

variable "queue_properties_cors_rule_allowed_methods" {
    type = list(string)
    description = "The list of HTTP methods allowed to be executed by the origin"
    default = null
}

variable "queue_properties_cors_rule_allowed_origins" {
    type = list(string)
    description = "The list of origin domains that will be allowed via CORS"
    default = null
}

variable "queue_properties_cors_rule_exposed_headers" {
    type = list(string)
    description = "The list of response headers to expose to CORS clients"
    default = null
}

variable "queue_properties_cors_rule_max_age_in_seconds" {
    type = number
    description = "The number of seconds the client should cache a preflight response"
    default = null
}

variable "queue_properties_logging_delete" {
    type = bool
    description = "Boolean flag which indicates whether to log delete requests"
    default = null
}

variable "queue_properties_logging_read" {
    type = bool
    description = "Boolean flag which indicates whether to log read requests"
    default = null
}

variable "queue_properties_logging_version" {
    type = string
    description = "The version of storage analytics to use for this blob container"
    default = null
}

variable "queue_properties_logging_write" {
    type = bool
    description = "Boolean flag which indicates whether to log write requests"
    default = null
}

variable "queue_properties_logging_retention_policy_days" {
    type = number
    description = "The number of days that the logging data should retain data for"
    default = null
}

variable "queue_properties_minute_metrics_enabled" {
    type = bool
    description = "Boolean flag which enables minute metrics for this blob container"
    default = null
}

variable "queue_properties_minute_metrics_version" {
    type = string
    description = "The version of minute metrics to use for this blob container"
    default = null
}

variable "queue_properties_minute_metrics_include_apis" {
    type = bool
    description = "Boolean flag which indicates whether to include API calls in minute metrics"
    default = null
}

variable "queue_properties_minute_metrics_retention_policy_days" {
    type = number
    description = "The number of days that the minute metrics should retain data for"
    default = null
}

variable "queue_properties_hour_metrics_enabled" {
    type = bool
    description = "Boolean flag which enables hour metrics for this blob container"
    default = null
}

variable "queue_properties_hour_metrics_version" {
    type = string
    description = "The version of hour metrics to use for this blob container"
    default = null
} 

variable "queue_properties_hour_metrics_include_apis" {
    type = bool
    description = "Boolean flag which indicates whether to include API calls in hour metrics"
    default = null
}

variable "queue_properties_hour_metrics_retention_policy_days" {
    type = number
    description = "The number of days that the hour metrics should retain data for"
    default = null
}

variable "sas_policy_expiration_period" {
    type = string
    description = "The period of time for which SAS tokens created with this policy are valid. Possible values are days, hours, or minutes"
    default = null
}

variable "sas_policy_expiration_action" {
    type = string
    description = "The type of SAS token that should be created. Possible values are Delete, Read, Write, List, Add, Create, Update, Process and Tag"
    default = null
}

variable "static_website_index_document" {
    type = string
    description = "The index document to use for this static website"
    default = null
}

variable "static_website_error_404_document" {
    type = string
    description = "The error 404 document to use for this static website"
    default = null
}

variable "share_properties_cors_rule_allowed_headers" {
    type = list(string)
    description = "The list of headers allowed for this CORS rule"
    default = null
}

variable "share_properties_cors_rule_allowed_methods" {
    type = list(string)
    description = "The list of HTTP methods allowed to be executed by the origin"
    default = null
}

variable "share_properties_cors_rule_allowed_origins" {
    type = list(string)
    description = "The list of origin domains that will be allowed via CORS"
    default = null
}

variable "share_properties_cors_rule_exposed_headers" {
    type = list(string)
    description = "The list of response headers to expose to CORS clients"
    default = null
}

variable "share_properties_cors_rule_max_age_in_seconds" {
    type = number
    description = "The number of seconds the client should cache a preflight response"
    default = null
}

variable "share_properties_retention_policy_days" {
    type = number
    description = "The number of days that the deleted blob should be retained. A value of 0 means that blob soft delete is disabled"
    default = null
}

variable "share_properties_smb_versions" {
    type = list(string)
    description = "The list of SMB versions supported by this storage account"
    default = null
}

variable "share_properties_smb_authentication_types" {
    type = list(string)
    description = "The list of SMB authentication types supported by this storage account"
    default = null
}

variable "share_properties_smb_kerberos_ticket_encryption_type" {
    type = set(string)
    description = "The Kerberos ticket encryption type to use for this storage account. Possible values are RC4, AES128, AES256"
    default = null
}

variable "share_properties_smb_channel_encryption_type" {
    type = set(string)
    description = "The SMB channel encryption type to use for this storage account. Possible values are None, AES128, AES256"
    default = null
}

variable "share_properties_smb_multichannel_enabled" {
    type = bool
    description = "Boolean flag which indicates whether SMB multichannel is enabled for this storage account"
    default = null
}

variable "container_access_type" {
    type = string
    description = "The access type for the container"
    default = null
  
}