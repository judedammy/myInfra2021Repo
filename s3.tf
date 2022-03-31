resource "aws_s3_bucket" "my-s3-bucket24" {
  bucket = "my-s3-bucket24"
}
  
resource "aws_s3_bucket_acl" "my-s3-bucket24" {
  bucket = aws_s3_bucket.my-s3-bucket24.id
  acl = var.acl
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my-s3-bucket24.id
   versioning_configuration {
     status = "Enabled"
  }
}
