resource "aws_instance" "demo-2" {
  ami           = var.AMI
  instance_type = var.INSTANCE_TYPE

  tags = {
    Name = "demo-2"
  }
}
