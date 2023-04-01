<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3-bucket"></a> [s3-bucket](#module\_s3-bucket) | terraform-aws-modules/s3-bucket/aws | 3.8.2 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_abort_incomplete_multipart_upload_days"></a> [abort\_incomplete\_multipart\_upload\_days](#input\_abort\_incomplete\_multipart\_upload\_days) | Number of days to delete incomplete multipart upload parts | `number` | `7` | no |
| <a name="input_expiration_days"></a> [expiration\_days](#input\_expiration\_days) | Expiration days | `number` | `90` | no |
| <a name="input_expired_object_delete_marker"></a> [expired\_object\_delete\_marker](#input\_expired\_object\_delete\_marker) | Expired object delete marker | `bool` | `true` | no |
| <a name="input_noncurrent_version_expiration_days"></a> [noncurrent\_version\_expiration\_days](#input\_noncurrent\_version\_expiration\_days) | Number of days to expire the noncurrent version of objects | `number` | `30` | no |
| <a name="input_s3_bucket_prefix"></a> [s3\_bucket\_prefix](#input\_s3\_bucket\_prefix) | Bucket Prefix | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->