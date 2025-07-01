module "vpc"{
  source = "git::https://github.com/ckrrajeshkumar/remote-state-file.git//module?ref=master"
  vpccidr = var.vpccidr
  vpcname = var.vpcname
  az = var.az
  subnetcidr = var.subnetcidr
  babajiigw = var.babajiigw
  igwcidr = var.igwcidr
  rtname = var.rtname
}
module "sg"{
  source = "git::https://github.com/ckrrajeshkumar/remote-state-file.git//module?ref=master"
  vpc_id = module.vpc.vpc_id
  sgname  = var.sgname
  block1  = var.block1
  block2  = var.block2
  block3  = var.block3
}
module "ec2"{
  source = "git::https://github.com/ckrrajeshkumar/remote-state-file.git//module?ref=master"
  amiid = var.amiid
  intype = var.intype
  subnet_id = var.subnetcidr
  az = var.az
  security_group_id = module.sg.sg_id
}