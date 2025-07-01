resource "aws_instance" "babaji_web"{
  ami = var.amiid
  instance_type = var.intype
  count = length(var.subnetcidr)
  subnet_id = element(aws_subnet.babaji-pub.*.id, count.index)
  security_groups = [aws_security_group.babaji-sg.id]
 }