variable "AWS_REGION" {
  default = "us-east-1"
}

variable "K8S_AMI_ID" {
  default = "ami-0affd4508a5d2481b" 
}

variable "SUBNETID" {
  default = "subnet-717fee7f"
}

variable "VPCID" {
  default = "vpc-92e50eef"
}

variable "K8S_PRIV_KEY" {
  default = "testkey"
}

variable "K8S_PUB_KEY" {
  default = "testkey.pub"
}
