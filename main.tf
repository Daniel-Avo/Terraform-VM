provider "aws" {
  region = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "web" {
  ami           = ami-0e472ba40eb589f49
  instance_type = "t2.micro"

  }