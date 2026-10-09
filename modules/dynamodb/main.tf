
resource "aws_dynamodb_table" "sessions" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "SessionId"

  attribute {
    name = "SessionId"
    type = "S"
  }

  tags = {
    Name = var.table_name
  }
}
