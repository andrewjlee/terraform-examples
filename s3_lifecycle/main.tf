module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.8.2"

  //bucket_prefix = "ajl-test-bucket-tf"
  bucket_prefix = var.s3_bucket_prefix

  block_public_acls = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls = true

  force_destroy = false
  
  control_object_ownership = true
  object_ownership = "BucketOwnerEnforced"
  attach_deny_insecure_transport_policy = true

  versioning = {
    enabled = true
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm     = "AES256"
      }
    }
  }

 lifecycle_rule = [
    {
      id      = "expiration-rule-1"
      enabled = true
      abort_incomplete_multipart_upload_days = var.abort_incomplete_multipart_upload_days

      filter = {}

      noncurrent_version_expiration = {
        noncurrent_days = var.noncurrent_version_expiration_days
    }
    expiration = {
               days = var.expiration_days
               expired_object_delete_marker = var.expired_object_delete_marker
             }
    }]



}