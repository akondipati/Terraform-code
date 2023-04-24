resource "aws_dynamodb_table" "cricket_match_list" {
  # name           = ["Cricket_Match_List_ + lookup(var.env, terraform.workspace))"]
  name           = "Cricket_Match-DynamoDB-Table-${terraform.workspace}"
  billing_mode   = "PROVISIONED"
  read_capacity  = lookup(var.env, terraform.workspace) == "prod" ? 10 : 5
  write_capacity = lookup(var.env, terraform.workspace) == "prod" ? 10 : 5
  hash_key       = "Cricket_Match-DynamoDB-Table"
  attribute {
    name = "Cricket_Match-DynamoDB-Table"
    type = "S"
  }
  tags = {
    env = lookup(var.env, terraform.workspace)
  }
}
