# KMS MODULE

module "kms" {
  source = "./modules/kms"
}

# S3 MODULE

module "s3" {
  source = "./modules/s3"

  kms_key_arn = module.kms.kms_key_arn
}

# DYNAMODB MODULE

module "dynamodb" {
  source = "./modules/dynamodb"

  table_name = var.table_name
}
