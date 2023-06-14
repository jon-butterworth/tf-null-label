output "id" {
  value       = local.enabled ? local.id : ""
}

output "id_full" {
  value       = local.enabled ? local.id_full : ""
}

output "enabled" {
  value       = local.enabled
}

output "namespace" {
  value       = local.enabled ? local.namespace : ""
}

output "tenant" {
  value       = local.enabled ? local.tenant : ""
}

output "environment" {
  value       = local.enabled ? local.environment : ""
}

output "name" {
  value       = local.enabled ? local.name : ""
}

output "stage" {
  value       = local.enabled ? local.stage : ""
}

output "delimiter" {
  value       = local.enabled ? local.delimiter : ""
}

output "attributes" {
  value       = local.enabled ? local.attributes : []
}

output "tags" {
  value       = local.enabled ? local.tags : {}
}

output "additional_tag_map" {
  value       = local.additional_tag_map
}

output "label_order" {
  value       = local.label_order
}

output "regex_replace_chars" {
  value       = local.regex_replace_chars
}

output "id_length_limit" {
  value       = local.id_length_limit
}

output "tags_as_list_of_maps" {
  value       = local.tags_as_list_of_maps
}

output "descriptors" {
  value       = local.descriptors
}

output "normalized_context" {
  value       = local.output_context
}

output "context" {
  value       = local.input
}

