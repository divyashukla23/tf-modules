provider "aws" {
  region = "us-east-1"
}

module "my_ec2" {
  source         = "./modules/ec2"
  ami            = "ami-0d0f28110d16ee7d6"
  instance_type  = "t2.micro"
  key_name       = "my-key"
  subnet_id      = "subnet-0477ac1ba6522f2eb"
  instance_name  = "My-Terraform-EC2"
}

output "ec2_instance_id" {
  value = module.my_ec2.instance_id
}

output "ec2_public_ip" {
  value = module.my_ec2.public_ip
}


module "my_s3" {
  source              = "./modules/s3"
  bucket_name         = "my-terraform-s3-bucket"
  environment         = "production"
}

output "s3_bucket_id" {
  value = module.my_s3.bucket_id
}
output "s3_bucket_arn" {
  value = module.my_s3.bucket_arn
}



