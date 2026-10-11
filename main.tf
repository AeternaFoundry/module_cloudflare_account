resource "cloudflare_account" "accounts" {
  for_each = var.accounts

  name       = each.value.name
  managed_by = each.value.managed_by
  settings   = each.value.settings
  type       = each.value.type
  unit       = each.value.unit
}

