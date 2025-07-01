terraform{
  backend "s3"{
    bucket = "babaji-s3-dynamodb"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "babaji-table"
  }
}