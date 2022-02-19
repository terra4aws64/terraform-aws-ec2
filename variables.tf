variable "vpc_subnet_id" {
  type        = string
  description = "VPC: subnet"
  nullable    = false
}

variable "vpc_sg_ids" {
  type        = list(string)
  description = "VPC: security group ids"
  nullable    = false
}

variable "ami_id" {
  type        = string
  description = "AMI: name"
  nullable    = false
}

variable "ec2_size" {
  type        = string
  description = "EC2: instance type"
  default     = "t2.micro"
  nullable    = true
}

variable "ec2_public" {
  type        = bool
  description = "EC2: public access?"
  default     = false
  nullable    = true
}

variable "ec2_name" {
  type        = string
  description = "EC2: tag: name"
  default     = "target"
  nullable    = true
  sensitive   = false
}

variable "ec2_key" {
  type        = string
  description = "EC2: public SSH key"
  nullable    = true
  sensitive   = true
}
