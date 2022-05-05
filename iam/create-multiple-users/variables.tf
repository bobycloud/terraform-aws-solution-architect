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

variable "username" {
  description = "AWS username"
  type        = list(string)
  default     = ["jack", "john", "jimmy"]
}