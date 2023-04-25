data "aws_ami" "centos-8-ami" {
  name_regex  = "surendra centos8"
  owners      = ["762942456166"]
}

data "aws_secretsmanager_secret" "roboshop" {
  name = "roboshop/all-secrets"
}

data "aws_secretsmanager_secret_version" "roboshop" {
  secret_id = data.aws_secretsmanager_secret.roboshop.id
}