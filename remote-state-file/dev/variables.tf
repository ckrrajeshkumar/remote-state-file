variable "vpccidr"{}
variable "vpcname" {}
variable "az" {
  type = list(any)
}
variable "subnetcidr" {
  type = list(any)
}
variable "babajiigw" {}
variable "igwcidr" {}
variable "rtname" {}
variable "block1" {}
variable "block2" {}
variable "block3" {}
variable "sgname" {}
variable "amiid" {}
variable "intype" {}
