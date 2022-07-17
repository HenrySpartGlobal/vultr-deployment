variable "api_key" {
  type = string
}

variable "plan" {
  type = string
  description = "The Vultr instance plan"
}

variable "region" {
  type = string
  description = "What region the instnace will be hoested"
}

variable "os_id" {
  type = number
  description = "What operating system to use for the instance. Each have a unique ID"
}

variable "label" {
  type = string
  description = "The label the instance will have"
}

variable "tags" {
  type = list(string)
  description = "Tags to be attached to instance (Can have multiple)"
}

variable "hostname" {
  type = string
  description = "The actual name of the instance"
}

variable "ssh_key_id" {
  type = list(string)
  description = "id's of ssh keys to be added"
}