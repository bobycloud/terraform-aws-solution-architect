resource "aws_iam_user" "username" {
  count = length(var.username)
  name  = element(var.username, count.index)
}