resource "aws_s3_bucket" "bucket" {
  bucket = "upload-bucket"
  acl    = "private"
}

resource "aws_s3_bucket_notification" "bucket_notif" {
  bucket = aws_s3_bucket.bucket.id

  queue {
    queue_arn = aws_sqs_queue.queue.arn
    events    = ["s3:ObjectCreated:*"]
  }
}
