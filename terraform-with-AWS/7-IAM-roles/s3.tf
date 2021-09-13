resource "aws_s3_bucket" "b" {
  bucket = "mybucket-NAME"
  acl    = "private"

  tags = {
    Name = "mybucket-NAME"
  }
}
