terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-2011"
    key            = "project/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
