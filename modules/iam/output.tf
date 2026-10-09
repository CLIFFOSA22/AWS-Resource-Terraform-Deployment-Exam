output "s3_dynamodb_policy_arn" {
  description = "ARN of the IAM policy for S3 and DynamoDB"
  value       = aws_iam_policy.s3_dynamodb_policy.arn
}
