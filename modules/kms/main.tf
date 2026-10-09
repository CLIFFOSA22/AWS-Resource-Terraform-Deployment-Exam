resource "aws_kms_key" "s3_kms" {
  description             = var.kms_description
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = {
    Name = "S3-KMS"
  }
}

resource "aws_kms_alias" "s3_kms_alias" {
  name          = "alias/S3-KMS"
  target_key_id = aws_kms_key.s3_kms.key_id
}
