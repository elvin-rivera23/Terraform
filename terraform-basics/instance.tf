// First steps 9/3/21

provider "aws" {
  access_key = "YOUR ACCESS AWS KEY"
  secret_key = "YOUR SECRET AWS KEY"
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fdf8b5989f22a4e0"
  instance_type = "t2.micro"
}

/*
  Useful commands:

  terraform init
  terraform apply <- shortcut for : terraform plan -out "file" ; terraform apply "file" ; rm "file"
  terraform destroy
  terraform plan

  terraform plan -out out.terraform <- changes, will be saved in output. terraform apply will only apply changes
*/
