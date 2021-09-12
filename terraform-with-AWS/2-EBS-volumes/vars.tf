variable "AWS_REGION" {
  default = "us-west-1"
}

# ssh-keygen -f "name of key"
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

// use amd64 arch
variable "AMIS" {
  type = map(string)
  default = {
    us-west-1 = "ami-0fdf8b5989f22a4e0"
    us-west-2 = "ami-079e7a3f57cc8e0d0"
    us-east-1 = "ami-0133407e358cc1af0"
  }
}

