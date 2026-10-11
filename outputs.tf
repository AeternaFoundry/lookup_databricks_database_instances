output "database_instances_lookup_database_instances" {
  description = "Map of database_instances values across all database_instances_lookup, keyed the same as var.database_instances_lookup except keys with no database_instances are omitted"
  value       = { for k, v in data.databricks_database_instances.database_instances_lookup : k => v.database_instances if v.database_instances != null && length(v.database_instances) > 0 }
}
output "database_instances_lookup_page_size" {
  description = "Map of page_size values across all database_instances_lookup, keyed the same as var.database_instances_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_database_instances.database_instances_lookup : k => v.page_size if v.page_size != null }
}
output "database_instances_lookup_provider_config" {
  description = "Map of provider_config values across all database_instances_lookup, keyed the same as var.database_instances_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_database_instances.database_instances_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

