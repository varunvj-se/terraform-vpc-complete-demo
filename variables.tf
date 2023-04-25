variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The instance type of EC2 instance"
}

variable "ec2_intance_count" {
  type        = number
  description = "Number of EC2 instances"
  default     = 5
}