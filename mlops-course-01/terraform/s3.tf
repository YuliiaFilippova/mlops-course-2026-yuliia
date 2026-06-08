resource "aws_s3_bucket" "this" {
  bucket = "mlops-course-2026-yuliia"
  tags = {
    Environment = "DEV"
  }
}