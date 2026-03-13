variable "project_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "public_ssh_cidr" {
  type        = string
  description = "CIDR block allowed to SSH to public EC2"
  default     = "0.0.0.0/0"
}

