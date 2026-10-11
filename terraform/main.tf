resource "aws_s3_bucket" "edumeal_images" {
  bucket = var.bucket_name

  tags = {
    Project     = "EduMeal"
    Environment = "learning"
    ManagedBy   = "OpenTofu"
  }
}

resource "aws_s3_bucket_public_access_block" "edumeal_images" {
  bucket = aws_s3_bucket.edumeal_images.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "edumeal_images" {
  bucket = aws_s3_bucket.edumeal_images.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}