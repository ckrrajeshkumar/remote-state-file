resource "aws_security_group" "babaji-sg"{
  vpc_id = aws_vpc.babaji-vpc.id
  tags = {
    Name = var.sgname
  }
  ingress{
    description = "ALLOW SSH"
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = var.block1
  }
  ingress{
    description = "ALLOWS HTTP"
    from_port = "80"
    to_port ="80"
    protocol = "tcp"
    cidr_blocks = var.block2
  }
  egress{
    description = "ALL outbound"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.block3
  }
}
output "sg_id" {
  value = aws_security_group.babaji-sg.id
}

