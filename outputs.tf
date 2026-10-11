output "accounts_id" {
  description = "Map of id values across all accounts, keyed the same as var.accounts except keys with no id are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "accounts_created_on" {
  description = "Map of created_on values across all accounts, keyed the same as var.accounts except keys with no created_on are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.created_on if v.created_on != null && length(v.created_on) > 0 }
}
output "accounts_managed_by" {
  description = "Map of managed_by values across all accounts, keyed the same as var.accounts except keys with no managed_by are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.managed_by if v.managed_by != null && length(v.managed_by) > 0 }
}
output "accounts_name" {
  description = "Map of name values across all accounts, keyed the same as var.accounts except keys with no name are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "accounts_settings" {
  description = "Map of settings values across all accounts, keyed the same as var.accounts except keys with no settings are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.settings if v.settings != null && length(v.settings) > 0 }
}
output "accounts_type" {
  description = "Map of type values across all accounts, keyed the same as var.accounts except keys with no type are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.type if v.type != null && length(v.type) > 0 }
}
output "accounts_unit" {
  description = "Map of unit values across all accounts, keyed the same as var.accounts except keys with no unit are omitted"
  value       = { for k, v in cloudflare_account.accounts : k => v.unit if v.unit != null && length(v.unit) > 0 }
}

