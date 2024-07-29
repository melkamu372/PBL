region = "us-east-1"

vpc_cidr = "172.16.0.0/16" 

enable_dns_support = "true" 

enable_dns_hostnames = "true"  

preferred_number_of_public_subnets="2"
preferred_number_of_private_subnets="4"
environment               = "production"
ami                       = "ami-0c5acb9ce557a3477"  
keypair                   = "melkamu_key"
account_no = "736498736845"
master-username = "melkamu"
master-password = "PassWord.1"
tags = {
  Enviroment      = "production" 
  Owner-Email     = "melkamu372@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "736498736845"
}
