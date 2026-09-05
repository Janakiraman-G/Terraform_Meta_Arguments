# Going to create AWS S3 bucket with versioning enabled
resource "aws_s3_bucket" "example-1" {
  count  = 2
  bucket = var.bucket_name[count.index]

# added tags to the S3 bucket

  tags = var.tags
}

# Going to create AWS S3 bucket with versioning enabled using for_each
resource "aws_s3_bucket" "example-2" {
  for_each = var.bucket_name_set
  bucket   = each.key


  depends_on = [aws_s3_bucket.example-1]

}





