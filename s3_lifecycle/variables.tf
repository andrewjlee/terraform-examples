variable "s3_bucket_prefix" {
    description = "Bucket Prefix"
    type = string
}

variable "noncurrent_version_expiration_days" {
    description = "Number of days to expire the noncurrent version of objects"
    type = number
    default = 30
    validation {
      condition = var.noncurrent_version_expiration_days <= 30
      error_message = "The maximum value of noncurrent_version_expiration is 30 days"
    }
}

variable "abort_incomplete_multipart_upload_days" {
    description = "Number of days to delete incomplete multipart upload parts"
    type = number
    default = 7
    validation {
      condition = var.abort_incomplete_multipart_upload_days <= 7
      error_message = "The maximum value of abort_incomplete_multipart_upload_days is 7"
    }
}

variable "expired_object_delete_marker" {
    description = "Expired object delete marker"
    type = bool
    default = true
    validation {
      condition = var.expired_object_delete_marker == true
      error_message = "Expired Object Delete Marker must be set to true"
    }
}

variable "expiration_days" {
    description = "Expiration days"
    type = number
    default = 90
    validation {
      condition = var.expiration_days <= 90
      error_message = "The maximum value of expiration_days is 90."
    }
  
}