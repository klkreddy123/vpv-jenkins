resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id = "subnet-0d9f6e8c72fbba9e2"

  tags = {
    Name = "web"
  }
}