resource "aws_sqs_queue" "queue" {
  name                       = "upload-queue"
  delay_seconds              = 60
  max_message_size           = 200
  message_retention_seconds  = 172800 // 48h
  visibility_timeout_seconds = 30
}

resource "aws_sqs_queue_policy" "notif_policy" {
  queue_url = aws_sqs_queue.queue.id

  policy = data.aws_iam_policy_document.iam_notif_policy_doc.json
}
