
provider "aws" {
  region  = "ap-south-1"
  access_key="AKIATX5K52TFWTWEXVMV"
  secret_key="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"
  
}

resource "aws_instance" "terraform_EC2" {
  ami           = "ami-0d81306eddc614a45"
  instance_type = "t2.micro"
  security_groups=["launch-wizard-3"]
  associate_public_ip_address = true
  key_name = "secondawsfile"
  count = 6

  tags = {
    Name ="Cluster"
    Environment = "DEV"
    OS = "Linux"
  }

  }
