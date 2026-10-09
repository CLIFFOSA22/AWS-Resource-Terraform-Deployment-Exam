output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.exam_logs.bucket
}


output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.exam_logs.arn
}


output "bucket_id" {
  description = "ID of the S3 bucket"
  value       = aws_s3_bucket.exam_logs.id
}
