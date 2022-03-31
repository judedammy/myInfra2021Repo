resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "my-s3-bucket"
}
  
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  acl = var.acl
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my-s3-bucket.id
   versioning_configuration {
    status = var.versioning
  }
}
