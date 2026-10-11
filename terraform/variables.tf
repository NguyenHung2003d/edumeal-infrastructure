variable "aws_region" {
  description = "AWS region for EduMeal infrastructure"
  type        = string
  default     = "ap-southeast-1"
}

variable "bucket_name" {
  description = "Globally unique name for the EduMeal image bucket"
  type        = string
  default     = "edumeal-images-dev-nguyenhung-2026"
}