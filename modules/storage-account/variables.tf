variable "storage_name" {
    type = string
    description = "(Required) the name of the kv."
    default = ""
}

variable "location" {
  type = string
  description = "(Required) the location of the kv."
  default = ""

  validation {
    condition = contains(["East US2", "Central US"], var.location)
    error_message = "Location must be East US2 or Central US."
  }
}

variable "resource_group_name" {
    type = string
    description = "The resource group name."
}

variable "environment" {
  type = string
  description = "(Required) The environment that will be used for the kv."

  validation {
    condition = contains(["dev", "production"], var.environment)
    error_message = "Environment must be dev or production."
  }
}