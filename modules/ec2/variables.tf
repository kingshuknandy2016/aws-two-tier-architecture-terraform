variable "project_name" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "public_ec2_sg_id" {
  type = string
}

variable "private_ec2_sg_id" {
  type = string
}

variable "key_name" {
  type        = string
  description = "Name of the existing EC2 key pair to use for SSH"
}

