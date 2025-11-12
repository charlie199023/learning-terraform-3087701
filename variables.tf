variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"  # Free Tier eligible
}
