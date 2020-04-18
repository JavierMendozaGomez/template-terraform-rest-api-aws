resource "aws_iam_role" "my_entity_lambda_role" {
  name = "template_terraform_aws_my_entity_lambda_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "my_entity_create" {
  function_name    = "template_terraform_aws_my_entity_lambda_create"
  description      = "Create my entity"
  filename         = local.lambda_payload_archive_path
  source_code_hash = filebase64sha256(local.lambda_payload_archive_path)
  role             = aws_iam_role.my_entity_lambda_role.arn
  handler          = "myEntity/create.handler"
  memory_size      = 3008
  timeout          = 30
  publish          = true
  runtime          = local.lambda_runtime
}

resource "aws_lambda_function" "my_entity_update" {
  function_name    = "template_terraform_aws_my_entity_lambda_update"
  description      = "Update my entity"
  filename         = local.lambda_payload_archive_path
  source_code_hash = filebase64sha256(local.lambda_payload_archive_path)
  role             = aws_iam_role.my_entity_lambda_role.arn
  handler          = "myEntity/update.handler"
  memory_size      = 3008
  timeout          = 30
  publish          = true
  runtime          = local.lambda_runtime
}

resource "aws_lambda_function" "my_entity_read" {
  function_name    = "template_terraform_aws_my_entity_lambda_read"
  description      = "Read my entity"
  filename         = local.lambda_payload_archive_path
  source_code_hash = filebase64sha256(local.lambda_payload_archive_path)
  role             = aws_iam_role.my_entity_lambda_role.arn
  handler          = "myEntity/read.handler"
  memory_size      = 3008
  timeout          = 30
  publish          = true
  runtime          = local.lambda_runtime
}

resource "aws_lambda_function" "my_entity_read_all" {
  function_name    = "template_terraform_aws_my_entity_lambda_read_all"
  description      = "Read all my entity"
  filename         = local.lambda_payload_archive_path
  source_code_hash = filebase64sha256(local.lambda_payload_archive_path)
  role             = aws_iam_role.my_entity_lambda_role.arn
  handler          = "myEntity/readAll.handler"
  memory_size      = 3008
  timeout          = 30
  publish          = true
  runtime          = local.lambda_runtime
}


resource "aws_lambda_function" "my_entity_delete" {
  function_name    = "template_terraform_aws_my_entity_lambda_delete"
  description      = "Delete my entity"
  filename         = local.lambda_payload_archive_path
  source_code_hash = filebase64sha256(local.lambda_payload_archive_path)
  role             = aws_iam_role.my_entity_lambda_role.arn
  handler          = "myEntity/delete.handler"
  memory_size      = 3008
  timeout          = 30
  publish          = true
  runtime          = local.lambda_runtime
}