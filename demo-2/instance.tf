resource "aws_instance" "demo-2" {
  ami           = var.AMI
  instance_type = var.INSTANCE_TYPE

  subnet_id = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  key_name = aws_key_pair.mykeypair.key_name

  user_data = templatefile("user_data.tftpl",{})

  tags = {
    Name = "demo-2"
  }
}
