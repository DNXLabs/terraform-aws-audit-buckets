output "config_s3_bucket_name" {
  value = aws_s3_bucket.config.bucket
}

output "logs_s3_bucket_name" {
  value = aws_s3_bucket.logs.bucket
}
