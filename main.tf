provider "aws" {
  region = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my-vpc.id

}


resource "aws_instance" "vm" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"

  user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install php7.4 -y
                sudo apt update -y
                sudo apt install apache2 -y
                sudo systemctl start apache2
                sudo bash -c 'echo Hello World > /var/www/html/index.html'
                EOF

  tags = {
    Name = "website"
  }

  }