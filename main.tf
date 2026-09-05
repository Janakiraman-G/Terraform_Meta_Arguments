# Going to create AWS S3 bucket with versioning enabled
resource "aws_s3_bucket" "example-1" {
  count  = 2
  bucket = var.bucket_name[count.index]


  tags = var.tags
}

resource "aws_s3_bucket" "example-2" {
  for_each = var.bucket_name_set
  bucket   = each.key


  #depends_on = [aws_s3_bucket.example-1]

}





