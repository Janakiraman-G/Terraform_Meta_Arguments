variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = list(string)
  default     = ["day-6-meta-data-bucket-1", "day-6-meta-data-bucket-2"]
}


variable "bucket_name_set" {
  description = "A set of S3 bucket names"
  type        = set(string)
  default     = ["day-6-meta-data-bucket-3", "day-6-meta-data-bucket-4"]
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default = {
    Name        = "my bucket"
    Environment = "Dev"
  }
}