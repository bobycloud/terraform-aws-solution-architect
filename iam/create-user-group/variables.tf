variable "aws_profile" {
  description = "AWS profile"
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}

variable "group_name" {
  description = "AWS group name"
  type        = string
  default     = "devops"
}