# AWS-ES Terraform module
Terraform module which creates Elastic/Open Search service domain

## Usage example
```
#AWS ES
module "domain_es" {
  source            = "github.com/hackwish/terraform-aws-es"
  domain            = "domain-es"
  es_version        = "7.1"
  es_instance_type  = "t2.small.elasticsearch"
  es_instance_count =  "3"
  use_cognito       = false
  domain_policy_source_ip = "127.0.0.1/32"
}
```

## ToDo
- Enable conditional to use Cognito or Domain policy

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.es](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_resource_policy.es](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_resource_policy) | resource |
| [aws_cognito_user_pool.pool](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool) | resource |
| [aws_elasticsearch_domain.es](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain) | resource |
| [aws_elasticsearch_domain_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain_policy) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | ElasticSearch domain name | `string` | `"es"` | no |
| <a name="input_domain_policy_source_ip"></a> [domain\_policy\_source\_ip](#input\_domain\_policy\_source\_ip) | n/a | `string` | `"127.0.0.1/32"` | no |
| <a name="input_es_dedicated_master"></a> [es\_dedicated\_master](#input\_es\_dedicated\_master) | Indicates whether our cluster have dedicated master nodes enabled. | `string` | `false` | no |
| <a name="input_es_instance_count"></a> [es\_instance\_count](#input\_es\_instance\_count) | Elastic Search Service cluster Ec2 instance number. | `string` | `1` | no |
| <a name="input_es_instance_type"></a> [es\_instance\_type](#input\_es\_instance\_type) | ElasticSearch cluster Ec2 instance type. | `string` | `"t2.small.elasticsearch"` | no |
| <a name="input_es_master_count"></a> [es\_master\_count](#input\_es\_master\_count) | Elastic Search Service cluster dedicated master Ec2 instance number. | `string` | `0` | no |
| <a name="input_es_master_type"></a> [es\_master\_type](#input\_es\_master\_type) | Elastic Search Service cluster dedicated master Ec2 instance type. | `string` | `""` | no |
| <a name="input_es_version"></a> [es\_version](#input\_es\_version) | ElasticSearch domain name | `string` | `"7.10"` | no |
| <a name="input_es_zone_awareness"></a> [es\_zone\_awareness](#input\_es\_zone\_awareness) | Indicates whether zone awareness is enabled. | `string` | `false` | no |
| <a name="input_use_cognito"></a> [use\_cognito](#input\_use\_cognito) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_opensearch_access_policies"></a> [aws\_opensearch\_access\_policies](#output\_aws\_opensearch\_access\_policies) | n/a |
| <a name="output_aws_opensearch_domain_name"></a> [aws\_opensearch\_domain\_name](#output\_aws\_opensearch\_domain\_name) | n/a |
| <a name="output_aws_opensearch_endpoint"></a> [aws\_opensearch\_endpoint](#output\_aws\_opensearch\_endpoint) | n/a |
| <a name="output_aws_opensearch_kibana_endpoint"></a> [aws\_opensearch\_kibana\_endpoint](#output\_aws\_opensearch\_kibana\_endpoint) | n/a |
<!-- END_TF_DOCS -->