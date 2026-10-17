variable "admin_ip_cidr" {
  description = "Admin public IP in CIDR form (example: 203.0.113.10/32). Never commit a real value."
  type        = string

  validation {
    condition     = can(cidrhost(var.admin_ip_cidr, 0)) && var.admin_ip_cidr != "0.0.0.0/0"
    error_message = "Use a valid CIDR and never 0.0.0.0/0 (open to the whole internet)."
  }
}

variable "location" {
  type    = string
  default = "eastus2"
}
