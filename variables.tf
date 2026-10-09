variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
  default     = "ca-central-1"
}

variable "table_name" {
  type        = string
  description = "DynamoDB table name"
  default     = "cliff-sessions"
}
