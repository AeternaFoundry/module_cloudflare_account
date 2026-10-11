variable "accounts" {
  description = <<EOT
Map of accounts, attributes below
Required:
    - name
Optional:
    - managed_by
    - settings
    - type
    - unit
EOT

  type = map(object({
    name = string
    managed_by = optional(object({
    }))
    settings = optional(object({
      abuse_contact_email = optional(string)
      enforce_twofactor   = optional(bool)
    }))
    type = optional(string)
    unit = optional(object({
      id = optional(string)
    }))
  }))
}

