#aws region
variable "aws_region" {
  description = "region to create resources"
  type        = string
  default     = "us-east-1"
}
#env variable
variable "environment" {
  description = "Env var used as a prefix"
  type        = string
  default     = "dev"
}

#division of company
variable "business_division" {
  description = "business division"
  type        = string
  default     = "DATA"
}
