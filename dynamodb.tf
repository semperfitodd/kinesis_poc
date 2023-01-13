resource "aws_dynamodb_table" "this" {
  name         = "${local.name}_table"
  billing_mode = "PAY_PER_REQUEST"
  table_class  = "STANDARD"
  hash_key     = "from_kinesis"

  attribute {
    name = "from_kinesis"
    type = "S"
  }

  tags = var.tags
}