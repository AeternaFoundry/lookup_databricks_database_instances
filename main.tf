data "databricks_database_instances" "database_instances_lookup" {
  for_each = var.database_instances_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

