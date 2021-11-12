data "aws_iam_policy_document" "iam_notif_policy_doc" {
  statement {
    sid = "1"

    actions = [
      "sqs:SendMessage"
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    resources = [
      aws_sqs_queue.queue.arn
    ]

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = [aws_s3_bucket.bucket.arn]
    }
  }
}
