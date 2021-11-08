resource "aws_cognito_user_pool" "pool" {
    count       = var.use_cognito ? 1 : 0
    name = var.domain
}

