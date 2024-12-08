variable "allow_effect" {
  description = "Effect for IAM policies. true > Allow; false > Deny"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Deployment environment. Supported values dev, stg"
  type        = string
}
