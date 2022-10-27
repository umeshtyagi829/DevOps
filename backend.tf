terraform {
  backend "s3" {
    bucket = "terraform-state-file-techvzero"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "state-lock-db-table-techvzero"
  }
}
