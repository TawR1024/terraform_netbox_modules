variable "name" {
  type = string
}

variable "site" {
  type = string
}

variable "tenant" {
  type    = string
  default = "VPC"
}

variable "rack" {
  type        = string
  description = "rack name"
}

variable "position" {
  type    = number
  default = 4
}

variable "type" {
  type = string
}

variable "role" {
  type = string
}

variable "status" {
  type    = string
  default = "Planned"
}

variable "connections" {
  type        = map(object({ device = string, interface = string }))
  default     = { "ipmi" = { device = "", interface = "" } }
  description = "list of required interfaces"
}
