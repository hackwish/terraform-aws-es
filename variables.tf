# variable "vpc" {}

# variable "vpc_cidr" {
#   description = "CIDR to allow connections to ElasticSearch"
# }

# variable "es_subnets" {
#   type = "list"
#   description = "List of VPC Subnet IDs to create ElasticSearch Endpoints in"
# }

variable "domain" {
  description = "ElasticSearch domain name"
  default     = "es"
  type        = string
}


variable "es_version" {
  description = "ElasticSearch domain name"
  default     = "7.10"
  type        = string
}

variable "es_instance_type" {
  description = "ElasticSearch cluster Ec2 instance type."
  default     = "t2.small.elasticsearch"
  type        = string
}

variable "es_instance_count" {
  default     = 1
  description = "Elastic Search Service cluster Ec2 instance number."
  type        = string
}

variable "es_dedicated_master" {
  default     = false
  description = "Indicates whether our cluster have dedicated master nodes enabled."
  type        = string
}

variable "es_master_type" {
  default     = ""
  description = "Elastic Search Service cluster dedicated master Ec2 instance type."
  type        = string
}

variable "es_master_count" {
  default     = 0
  description = "Elastic Search Service cluster dedicated master Ec2 instance number."
  type        = string
}

variable "es_zone_awareness" {
  default     = false
  description = "Indicates whether zone awareness is enabled."
  type        = string
}

variable "domain_policy_source_ip" {
  default     = "127.0.0.1/32"
}

variable "use_cognito" {
  default     = false
  type        = bool
}