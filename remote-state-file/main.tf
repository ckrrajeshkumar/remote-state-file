resource "aws_instance" "babaji-web"{
  ami = var.amiid
  instance_type = var.intype
  security_groups = var.sgid
  tags={
    Name = var.ec2name
  }
}