output "organizations_organizational_units_id" {
  description = "Map of id values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_organizational_units_accounts" {
  description = "Map of accounts values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.accounts if v.accounts != null && length(v.accounts) > 0 }
}
output "organizations_organizational_units_arn" {
  description = "Map of arn values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "organizations_organizational_units_name" {
  description = "Map of name values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_organizational_units_parent_id" {
  description = "Map of parent_id values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}
output "organizations_organizational_units_tags" {
  description = "Map of tags values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "organizations_organizational_units_tags_all" {
  description = "Map of tags_all values across all organizations_organizational_units, keyed the same as var.organizations_organizational_units"
  value       = { for k, v in aws_organizations_organizational_unit.organizations_organizational_units : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

