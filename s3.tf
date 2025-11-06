# aws_s3_bucket
resource "aws_s3_bucket" "web_bucket" {
  bucket        = local.s3_bucket_name
  force_destroy = true

  tags = local.common_tags
}
#aws_s3 bucket policy

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.web_bucket.id
  policy = data.aws_iam_policy_document.elb_logs.json
}

data "aws_iam_policy_document" "elb_logs" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [data.aws_elb_service_account.root.arn]
    }

    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [aws_s3_bucket.web_bucket.arn, "${aws_s3_bucket.web_bucket.arn}/alb_logs/*"]
  }
}

#aws_s3_object

resource "aws_s3_object" "graphic" {
  bucket = aws_s3_bucket.web_bucket.bucket
  key    = "/website/DDDEVOPS.png"
  source = "./website/DDDEVOPS.png"

  tags = local.common_tags
}

resource "aws_s3_object" "html" {
  bucket = aws_s3_bucket.web_bucket.bucket
  key    = "/website/index.html"
  source = "./website/index.html"

  tags = local.common_tags
}