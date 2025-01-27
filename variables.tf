variable "name" {
  type        = string
  description = "The name of the Route Table"
  nullable    = false
}

variable "resource_group_name" {
  description = "Name of the resource group to Create the Route Table in"
  type        = string
}

variable "location" {
  description = "Location of the Route Table"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "bgp_route_propagation_enabled" {
  type    = bool
  default = false
}

variable "routes" {
  description = "A list of routes"
  type = list(object({
    name                   = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)
  }))
  default = null
}


