variable "AWS_REGION" {
  default = "us-east-2"
}

variable "K8S_AMI_ID" {
  default = "ami-01e36b7901e884a10"
}

variable "SUBNETID" {
  default = "subnet-9041c8dc"
}

variable "VPCID" {
  default = "vpc-68589803"
}

variable "K8S_PRIV_KEY" {
  default = "testkey"
}

variable "K8S_PUB_KEY" {
  default = "testkey.pub"
}
