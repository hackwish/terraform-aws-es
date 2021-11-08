output "aws_opensearch_domain_name" {
  value = aws_elasticsearch_domain.es.domain_name
}

output "aws_opensearch_endpoint" {
  value = aws_elasticsearch_domain.es.endpoint
}

output "aws_opensearch_kibana_endpoint" {
  value = aws_elasticsearch_domain.es.kibana_endpoint
}

output "aws_opensearch_access_policies" {
  value = aws_elasticsearch_domain_policy.main.access_policies
}
