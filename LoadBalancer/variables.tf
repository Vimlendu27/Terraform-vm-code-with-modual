variable "lbname" {
  type = string
}

variable "backendpool" {
  type = string
}

variable "backendpooladdress" {
  type = string
}

variable "vms" {
  type = map(any)
}

variable "probename" {
  type = string
}

variable "port" {
  type = string
}

variable "protocol" {
  type = string
}

variable "interval" {
  type = string
}

variable "lbrule" {
  type = string
}

variable "frontendport" {
  type = string
}

variable "backendport" {
  type = string
}

