output "s3_bucket_name" {
  description = "Name of the planned EduMeal image bucket"
  value       = aws_s3_bucket.edumeal_images.bucket
}