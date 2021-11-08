data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

resource "aws_elasticsearch_domain" "es" {
  domain_name                  = var.domain
  elasticsearch_version        = var.es_version

  cluster_config {
      instance_type            = var.es_instance_type
      instance_count           = var.es_instance_count
      dedicated_master_enabled = var.es_dedicated_master
      dedicated_master_type    = var.es_master_type
      dedicated_master_count   = var.es_master_count
      zone_awareness_enabled   = var.es_zone_awareness
  }

  # vpc_options {
  #   subnet_ids = [
  #     "${data.aws_subnet_ids.es.ids[0]}",
  #     "${data.aws_subnet_ids.es.ids[1]}",
  #   ]
  #   security_group_ids = ["${aws_security_group.es.id}"]
  # }

  ebs_options {
      ebs_enabled = true
      volume_size = 10
  }

  /* access_policies = <<POLICY
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Resource": "arn:aws:es:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:domain/${var.domain}/*"
            "Condition": {
              "IpAddress": {"aws:SourceIp": ["66.193.100.22/32"]}
      }
        }
    ]
  }
  POLICY */

  # DEPRECATED
  /* snapshot_options {
      automated_snapshot_start_hour = 23
  } */

  tags = {
      Domain = var.domain
  }

  advanced_options = {
    "rest.action.multi.allow_explicit_index" = "true"
  }

  log_publishing_options {
    cloudwatch_log_group_arn = aws_cloudwatch_log_group.es.arn
    log_type                 = "INDEX_SLOW_LOGS"
  }
}
