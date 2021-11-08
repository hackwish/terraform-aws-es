resource "aws_cloudwatch_log_group" "es" {
  name = var.domain
  /* depends_on = [
    aws_elasticsearch_domain.es
  ] */
}

resource "aws_cloudwatch_log_resource_policy" "es" {
  policy_name = var.domain
  /* depends_on = [
    aws_elasticsearch_domain.es
  ] */

  policy_document = <<CONFIG
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "es.amazonaws.com"
      },
      "Action": [
        "logs:PutLogEvents",
        "logs:PutLogEventsBatch",
        "logs:CreateLogStream"
      ],
      "Resource": "arn:aws:logs:*"
    }
  ]
}
CONFIG
}