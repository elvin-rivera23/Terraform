variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-west-1"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-west-1 = "ami-0daf1443f6adffe0d"
    us-west-2 = "ami-03ac21435677d3cb3"
    us-east-1 = "ami-0e011417bd70948da"
  }
}


//NOTE: rm terraform.tfvars after terraform plan, then terraform apply