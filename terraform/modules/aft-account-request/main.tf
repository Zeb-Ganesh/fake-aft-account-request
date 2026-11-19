resource "aws_dynamodb_table_item" "account_request" {
  table_name = "aft-request"
  hash_key   = "id"
  item = jsonencode({
    id                          = { S = var.control_tower_parameters["AccountEmail"] }
    account_customizations_name = { S = var.account_customizations_name }
  })
}
