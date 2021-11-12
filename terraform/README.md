## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 0.14.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.30.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/3.30.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_notification.bucket_notif](https://registry.terraform.io/providers/hashicorp/aws/3.30.0/docs/resources/s3_bucket_notification) | resource |
| [aws_sqs_queue.queue](https://registry.terraform.io/providers/hashicorp/aws/3.30.0/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue_policy.notif_policy](https://registry.terraform.io/providers/hashicorp/aws/3.30.0/docs/resources/sqs_queue_policy) | resource |
| [aws_iam_policy_document.iam_notif_policy_doc](https://registry.terraform.io/providers/hashicorp/aws/3.30.0/docs/data-sources/iam_policy_document) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
