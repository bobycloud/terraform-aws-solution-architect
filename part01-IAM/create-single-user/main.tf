resource "aws_iam_user" "iamUser" {
  name = var.username

  #tags are Optional !
  tags = { 
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.iamUser.name
}

