# terraform-aws-audit-buckets

[![Lint Status](https://github.com/DNXLabs/terraform-aws-audit-buckets/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-audit-buckets/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-audit-buckets)](https://github.com/DNXLabs/terraform-aws-audit-buckets/blob/master/LICENSE)

This terraform module creates buckets to save audit logs from accounts in the organization

The following resources will be created:
 -  AWS Config centralized bucket for Audit accounts
 -  Encrypted Bucket to save audit  logs

In addition, you have the option to specify:
 - How many days before transitioning files to Infrequent-Access (IA)
 - How many days before transitioning files to Glacier


<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_ids | AWS Account IDs under Auditing for the organization | `list` | `[]` | no |
| org\_name | Name for this organization (not actually used in API call) | `any` | n/a | yes |
| s3\_days\_until\_glacier | How many days before transitioning files to Glacier | `number` | `90` | no |

## Outputs

| Name | Description |
|------|-------------|
| s3\_bucket\_name | n/a |

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-audit-buckets/blob/master/LICENSE) for full details.
