variable project_name {
    description = "The project name for the infrastructure"
    type = string
}


variable region {
    description = "The region for the infrastructure"
    type = string
}

variable "key_name" {
  description = "Name of the existing EC2 key pair to use for SSH"
  type        = string
}

variable vpc_cidr_block {}
variable pub_sub_1a_cidr {}
variable pri_sub_3a_cidr {}