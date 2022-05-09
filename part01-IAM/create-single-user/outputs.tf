

output "iam_user_name" {
  description = "The user's name"
  value       = try(aws_iam_user.iamUser.name, "")
}

output "iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = try(aws_iam_user.iamUser.arn, "")
}

output "iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = try(aws_iam_user.iamUser.unique_id, "")
}

output "iam_access_key_id" {
  description = "The access key ID"
  value       = try(aws_iam_access_key.lb.id, aws_iam_access_key.lb.id, "")
}


# While the value is sensitive, it will not be shown in output.
# To see the value you should use this command after terraform apply is done:
# terraform output -raw iam_access_key_secret
output "iam_access_key_secret" {
  description = "The access key secret"
  value       = try(aws_iam_access_key.lb.secret, "")
  sensitive   = true
}