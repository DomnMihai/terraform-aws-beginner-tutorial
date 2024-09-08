variable "policy_description" {
  type = string
  description = "Description for policy_string"
  default = "Description for policy_string"

  validation {
    condition = length(var.policy_description) <= 40
    error_message = "Policy description has more than 40 characters"
  }
}

variable "policy_count" {
  type = number
  description = "Number of policies to create"
  default = 0

  validation {
    condition = var.policy_count < 3
    error_message = "Attempt to create more than 2 policies"
  }
}

variable "allow_s3_listing" {
  type = bool
  description = "Allow listing S3 buckets"
}

variable "action_list" {
  type = list(string)
}

variable "tags_map" {
  type = map(string)
  default = {
    Creator = "terraform"
    Source = "tags_map input variable"
  }
}

variable "sensitive_text" {
  type = string
  sensitive = true
}

variable "tags_object" {
  type = object({
    Creator = string
    Source = string
  })
}
