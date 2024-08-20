variable "vpc" {
  type = string
}

variable "targets" {
  type = list(object({
    name        = string
    address     = string
    port        = number
    protocol    = string
    packet_size = optional(number, 56)
  }))
}

