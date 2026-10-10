variable "project_network" {
  description = "Name of the existing project network in cPouta"
  type        = string
}
variable "name_prefix" {
  description = "Prefix to add to resource names"
  type        = string
}
variable "ssh_public_key_path" {
  description = "Local path to your public SSH key"
  type        = string
}
variable "ssh_allowed_cidr" {
  description = "Who may connect with SSH"
  type        = string
  validation {
    condition     = can(cidrhost(var.ssh_allowed_cidr, 0))
    error_message = "ssh_allowed_cidr must be in CIDR format, e.g. 203.0.113.45/32."
  }
}
variable "image_name" {
  description = "The name of the OS image"
  type        = string
  default     = "Ubuntu-24.04"
}
variable "flavor_name" {
  description = "The size of the VM"
  type        = string
  default     = "standard.tiny"
}
variable "student_name" {
  description = "Your name for the web page"
  type        = string
}
variable "page_message" {
  description = "Message for the web page"
  type        = string
}