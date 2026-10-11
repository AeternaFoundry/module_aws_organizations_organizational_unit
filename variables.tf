variable "organizations_organizational_units" {
  description = <<EOT
Map of organizations_organizational_units, attributes below
Required:
    - name
    - parent_id
Optional:
    - tags
    - tags_all
EOT

  type = map(object({
    name      = string
    parent_id = string
    tags      = optional(map(string))
    tags_all  = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.organizations_organizational_units : (
        can(regex("^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[0-9a-z]{8,32})$", v.parent_id))
      )
    ])
    error_message = "see https://docs.aws.amazon.com/organizations/latest/APIReference/API_CreateOrganizationalUnit.html#organizations-CreateOrganizationalUnit-request-ParentId"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

