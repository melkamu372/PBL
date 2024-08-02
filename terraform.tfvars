region = "us-east-1"

vpc_cidr = "172.16.0.0/16" 

enable_dns_support = "true" 

enable_dns_hostnames = "true"  
enable_classiclink = "false"


enable_classiclink_dns_support = "false"
preferred_number_of_public_subnets="2"
preferred_number_of_private_subnets="4"
environment               = "production"
ami                       = "ami-03972092c42e8c0ca" 
keypair                   = "melkamu372_key"
account_no = "7364987368405"
master-username = "melkamu"
master-password = "PassWord.1"
tags = {
  Enviroment      = "production" 
  Owner-Email     = "melkamu372@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "7364987368405"
}
