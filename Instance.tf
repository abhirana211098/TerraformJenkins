
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIATX5K52TF6GD6IUHG"
  secret_key="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"
  
}

resource "aws_instance" "terraform_EC2" {
  ami           = "ami-0d81306eddc614a45"
  instance_type = "t2.micro"
  security_groups=["launch-wizard-3"]
  associate_public_ip_address = true
  key_name = "secondawsfile"
  count = 5

  tags = {
    Name ="Cluster"
    Environment = "DEV"
    OS = "Linux"
  }

  }
