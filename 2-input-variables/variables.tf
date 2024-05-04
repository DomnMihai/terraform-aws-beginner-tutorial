variable "policy_description" {
  type = string
  description = "Description for policy_string"
  default = "Description for policy_string"
}

variable "policy_count" {
  type = number
  description = "Number of policies to create"
  default = 0
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
