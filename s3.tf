resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_name = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
