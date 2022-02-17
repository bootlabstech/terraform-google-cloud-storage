//required variables
variable "name" {
  description = "The name of the bucket."
  type        = string
}

variable "location" {
  description = <<-EOT
    {
   "type": "json",
   "purpose": "autocomplete",
   "data":[ "asia-east1",
        "asia-east2",
        "asia-northeast1",
        "asia-northeast2",
        "asia-northeast3",
        "asia-south1",
        "asia-south2",
        "asia-southeast1",
        "asia-southeast2",
        "australia-southeast1",
        "australia-southeast2",
        "europe-central2",
        "europe-north1",
        "europe-west1",
        "europe-west2",
        "europe-west3",
        "europe-west4",
        "europe-west6",
        "northamerica-northeast1",
        "northamerica-northeast2",
        "southamerica-east1",
        "southamerica-west1",
        "us-central1",
        "us-east1",
        "us-east4",
        "us-west1",
        "us-west2",
        "us-west3",
        "us-west4"
    ],
   "description":"The GCS location."
   }
  EOT
  type        = string
}

variable "project" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable "lrc_created_before" {
  description = " A date in the RFC 3339 format YYYY-MM-DD."
  type        = string
}

variable "retention_policy_retention_period" {
  description = "The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived."
  type        = number
}


# variable "logging_log_bucket" {
#   description = "The bucket that will receive log objects."
#   type        = string
# }

variable "lrc_custom_time_before" {
  description = " date in the RFC 3339 format YYYY-MM-DD."
  type        = string
}

variable "lrc_days_since_custom_time" {
  description = "Days since the date set in the customTime metadata for the object."
  type        = number
}

variable "lrc_noncurrent_time_before" {
  description = "Relevant only for versioned objects."
  type        = string
}

variable "website_main_page_suffix" {
  description = "Behaves as the bucket's directory index where missing objects are treated as potential directories."
  type        = string
}

variable "website_not_found_page" {
  description = "The custom object to return when a requested resource is not found."
  type        = string
}

# variable "cors_response_header" {
#   description = "The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains."
#   type        = list(string)
# }

# variable "labels" {
#   description = "A map of key/value label pairs to assign to the bucket."
#   type        = map(string)
# }

# variable "logging_log_object_prefix" {
#   description = "The object prefix for log objects."
#   type        = string
# }

# variable "encryption_default_kms_key_name" {
#   description = "The id of a Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified."
#   type        = string
# }

//optional variables
variable "force_destroy" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "true",
             "false"
              ],
   "description": "When deleting a bucket, this boolean option will delete all contained objects."
}
EOT
  type        = bool
  default     = false
}

variable "storage_class" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "STANDARD",
             "MULTI_REGIONAL",
             "REGIONAL",
             "NEARLINE",
             "COLDLINE",
             "ARCHIVE"
              ],
   "description": "The Storage Class of the new bucket."
   }
EOT
  type        = string
  default     = "STANDARD"
}

variable "lra_type" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "Delete",
             "SetStorageClass"
              ],
   "description": "The type of the action of this Lifecycle Rule."
   }
EOT
  type        = string
  default     = "SetStorageClass"
}

variable "lra_storage_class" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "STANDARD",
             "MULTI_REGIONAL",
             "REGIONAL",
             "NEARLINE",
             "COLDLINE",
             "ARCHIVE"
              ],
   "description": "The target Storage Class of objects affected by this Lifecycle Rule."
   }
EOT
  type        = string
  default     = "STANDARD"
}

variable "lrc_age" {
  description = " Minimum age of an object in days to satisfy this condition."
  type        = number
  default     = 1
}

variable "lrc_with_state" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "LIVE",
             "ARCHIVED",
             "ANY"
              ],
   "description": "Match to live and/or archived objects."
   }
EOT
  type        = string
  default     = "LIVE"
}

variable "lrc_matches_storage_class" {
  description = "Storage Class of objects to satisfy this condition."
  type        = list(string)
  default     = ["STANDARD"]
}

variable "lrc_num_newer_versions" {
  description = "Relevant only for versioned objects."
  type        = number
  default     = 1
}

variable "versioning_enabled" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "TRUE",
             "FALSE"
              ],
   "description": "While set to true, versioning is fully enabled for this bucket."
   }
EOT
  type        = bool
  default     = false
}

# variable "cors_origin" {
#   description = "The list of Origins eligible to receive CORS response headers."
#   type        = list(string)
#   default     = ["*"]
# }

# variable "cors_method" {
#   description = " The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc)."
#   type        = list(string)
#   default     = ["GET", "OPTION", "post"]
# }

# variable "cors_max_age_seconds" {
#   description = "The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses."
#   type        = number
#   default     = 1
# }

variable "retention_policy_is_locked" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "TRUE",
             "FALSE"
              ],
   "description": "The bucket will be locked and permanently restrict edits to the bucket's retention policy."
   }
EOT
  type        = bool
  default     = false
}

variable "requester_pays" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "TRUE",
             "FALSE"
              ],
   "description": "Enables Requester Pays on a storage bucket."
   }
EOT
  type        = bool
  default     = false
}

variable "uniform_bucket_level_access" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "TRUE",
             "FALSE"
              ],
   "description": "Enables Uniform bucket-level access access to a bucket."
   }
EOT
  type        = bool
  default     = true
}
