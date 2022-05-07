resource "aws_iam_user" "username" {
  name = var.username
}

resource "aws_iam_user_policy" "new_user_policy" {
  name   = aws_iam_user.username.name
  user   = aws_iam_user.username.name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:Describe*"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}