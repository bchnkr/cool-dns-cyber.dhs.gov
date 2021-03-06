# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "cyhy_account_id" {
  type        = string
  description = "The ID of the CyHy account."
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  type        = string
  description = "The AWS region to communicate with."
  default     = "us-east-1"
}

variable "cloudfront_zone_id" {
  type        = string
  description = "The ID of the Cloudfront hosted zone. This is set by AWS and is a constant across all Cloudfront distributions."
  default     = "Z2FDTNDATAQYW2"
}

variable "route53resourcechange_role_description" {
  type        = string
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows sufficient permissions to modify resource records in the DNS zone."
  default     = "Allows sufficient permissions to modify resource records in the DNS zone."
}

variable "route53resourcechange_role_name" {
  type        = string
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows sufficient permissions to modify resource records in the DNS zone."
  default     = "Route53ResourceChange-cyber.dhs.gov"
}

variable "sessendemail_role_description" {
  type        = string
  description = "The description to associate with the IAM role (as well as the corresponding policy) that allows sufficient permissions to send email via AWS SES and manipulate the suppression list."
  default     = "Allows sufficient permissions to send email via AWS SES and manipulate the suppression list."
}

variable "sessendemail_role_name" {
  type        = string
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows sufficient permissions to send email via AWS SES and manipulate the suppression list."
  default     = "SesSendEmail-cyber.dhs.gov"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources created"
  default = {
    Team        = "VM Fusion - Development"
    Application = "COOL - DNS - cyber.dhs.gov"
    Workspace   = "production"
  }
}
