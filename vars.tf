variable "AWS_REGION" {
  default = "us-eat-2"
}

variable "K8S_AMI_ID" {
  default = "ami-02e60be79e78fef21"
}

variable "SUBNETID" {
  default = "subnet-9041c8dc"
}

variable "VPCID" {
  default = "vpc-68589803"
}

variable "K8S_PRIV_KEY" {
  default = "keys/testkey"
}

variable "K8S_PUB_KEY" {
  default = "keys/testkey.pub"
}