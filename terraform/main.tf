resource "aws_instance" "server" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  tags = {
    Name = "New machine"
  }
}

resource "aws_s3_bucket" "name" {
  bucket        = "Infra/tfstate"
}