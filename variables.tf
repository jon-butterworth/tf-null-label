variable "context" {
  type = any
  default = {
    enabled             = true
    namespace           = null
    tenant              = null
    environment         = null
    stage               = null
    name                = null
    delimiter           = null
    attributes          = []
    tags                = {}
    additional_tag_map  = {}
    regex_replace_chars = null
    label_order         = []
    id_length_limit     = null
    label_key_case      = null
    label_value_case    = null
    descriptor_formats  = {}
    labels_as_tags = ["unset"]
  }

  validation {
    condition     = lookup(var.context, "label_key_case", null) == null ? true : contains(["lower", "title", "upper"], var.context["label_key_case"])
    error_message = "Allowed values: `lower`, `title`, `upper`."
  }

  validation {
    condition     = lookup(var.context, "label_value_case", null) == null ? true : contains(["lower", "title", "upper", "none"], var.context["label_value_case"])
    error_message = "Allowed values: `lower`, `title`, `upper`, `none`."
  }
}

variable "enabled" {
  type        = bool
  default     = null
}

variable "namespace" {
  type        = string
  default     = null
}

variable "tenant" {
  type        = string
  default     = null
}

variable "environment" {
  type        = string
  default     = null
}

variable "stage" {
  type        = string
  default     = null
}

variable "name" {
  type        = string
  default     = null
}

variable "delimiter" {
  type        = string
  default     = null
}

variable "attributes" {
  type        = list(string)
  default     = []
}

variable "labels_as_tags" {
  type        = set(string)
  default     = ["default"]
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "additional_tag_map" {
  type        = map(string)
  default     = {}
}

variable "label_order" {
  type        = list(string)
  default     = null
}

variable "regex_replace_chars" {
  type        = string
  default     = null
}

variable "id_length_limit" {
  type        = number
  default     = null
  validation {
    condition     = var.id_length_limit == null ? true : var.id_length_limit >= 6 || var.id_length_limit == 0
    error_message = "The id_length_limit must be >= 6 if supplied (not null), or 0 for unlimited length."
  }
}

variable "label_key_case" {
  type        = string
  default     = null

  validation {
    condition     = var.label_key_case == null ? true : contains(["lower", "title", "upper"], var.label_key_case)
    error_message = "Allowed values: `lower`, `title`, `upper`."
  }
}

variable "label_value_case" {
  type        = string
  default     = null

  validation {
    condition     = var.label_value_case == null ? true : contains(["lower", "title", "upper", "none"], var.label_value_case)
    error_message = "Allowed values: `lower`, `title`, `upper`, `none`."
  }
}

variable "descriptor_formats" {
  type        = any
  default     = {}
}
