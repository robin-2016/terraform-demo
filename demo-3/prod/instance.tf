module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "demo-3-prod"

  instance_type          = "t3.micro"
  key_name               = "mykeypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
}