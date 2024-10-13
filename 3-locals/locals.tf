locals {
  policy_description = "Description came from locals"
  policy_effect = var.allow_effect == true ? "Allow" : "Deny"
}
