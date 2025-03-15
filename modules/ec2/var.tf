variable "ami" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "subnet_id" {
  description = "The subnet where the instance will be launched"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}
