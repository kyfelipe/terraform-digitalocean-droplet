variable "token" {
  type        = string
  description = "API Token"
}

variable "number_machines" {
  type        = number
  default     = 1
  description = "Number of machines"
}

variable "image" {
  type        = string
  default     = "ubuntu-19-10-x64"
  description = "The Droplet image ID"
}

variable "name" {
  type        = string
  description = "Machine name"
}

variable "region" {
  type        = string
  default     = "nyc3"
  description = "The region to start in"
}

variable "size" {
  type        = string
  default     = "s-1vcpu-1gb"
  description = "The unique slug that indentifies the type of Droplet"
}

variable "backups" {
  type        = bool
  default     = false
  description = "Boolean controlling if backups are made"
}

variable "monitoring" {
  type        = bool
  default     = false
  description = "Boolean controlling whether monitoring agent is installed"
}

variable "ipv6" {
  type        = bool
  default     = false
  description = "Boolean controlling if IPv6 is enabled"
}

variable "private_networking" {
  type        = bool
  default     = false
  description = "Boolean controlling if private networks are enabled"
}

variable "user_data" {
  type        = string
  default     = null
  description = "A string of the desired User Data for the Droplet"
}

variable "ssh_name" {
  type        = string
  default     = null
  description = "SSH name in digitalocean"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "A list of the tags to be applied to this Droplet"
}
