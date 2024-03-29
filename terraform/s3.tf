resource "aws_s3_bucket" "artifact" {
  bucket = var.artifact_bucket_name

  tags = local.common_tags
}

resource "aws_s3_bucket_server_side_encryption_configuration" "artifact" {
  bucket = aws_s3_bucket.artifact.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
