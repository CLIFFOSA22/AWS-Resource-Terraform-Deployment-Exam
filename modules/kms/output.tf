
output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = aws_kms_key.s3_kms.arn
}

output "kms_key_id" {
  description = "ID of the KMS key"
  value       = aws_kms_key.s3_kms.key_id
}

output "kms_alias" {
  description = "Alias of the KMS key"
  value       = aws_kms_alias.s3_kms_alias.name
}
