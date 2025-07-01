resource "aws_instance" "babaji-web"{
  ami = var.amiid
  instance_type = var.intype
  vpc_security_group_ids = var.sgid
  tags={
    Name = var.ec2name
  }
}