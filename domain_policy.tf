resource "aws_elasticsearch_domain_policy" "main" {
    # count       = var.use_cognito ? 0 : 1
    domain_name = aws_elasticsearch_domain.es.domain_name

    access_policies = <<POLICIES
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Action": "es:*",
                "Principal": "*",
                "Effect": "Allow",
                "Condition": {
                    "IpAddress": {"aws:SourceIp": "${var.domain_policy_source_ip}"}
                },
                "Resource": "${aws_elasticsearch_domain.es.arn}/*"
            }
        ]
    }
    POLICIES
}