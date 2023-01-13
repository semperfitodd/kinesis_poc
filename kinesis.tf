locals {
  name = "kinesis_poc"
}

resource "aws_kinesis_stream" "this" {
  name = "${local.name}_stream"

  #  encryption_type = "KMS"
  #  kms_key_id      = "alias/aws/kinesis"

  stream_mode_details {
    stream_mode = "ON_DEMAND"
  }

  tags = var.tags
}