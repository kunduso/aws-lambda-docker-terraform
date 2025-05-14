data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
locals {
  principal_root_arn       = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
  principal_logs_arn       = "logs.${var.region}.amazonaws.com"
  cloudwatch_log_group_arn = "arn:aws:logs:${var.region}:${data.aws_caller_identity.current.account_id}:log-group:${var.log_group_prefix}${var.name}*"
}