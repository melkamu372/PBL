# Output S3 bucket name
output "s3_bucket_name" {
  value       = module.S3.bucket_id
  description = "The name of the S3 bucket."
}

# Output DynamoDB table name
output "dynamodb_table_name" {
  value       = module.Dynamodb.table_id
  description = "The name of the DynamoDB table."
}

# # Output VPC ID
# output "vpc_id" {
#   value = module.Network.vpc_id
#   description = "The ID of the VPC."
# }

# # Output public subnets
# output "public_subnets" {
#   value = module.Network.public_subnets
#   description = "The list of public subnet IDs."
# }

# # Output private subnets
# output "private_subnets" {
#   value = module.Network.private_subnets
#   description = "The list of private subnet IDs."
# }

# # Output ALB DNS name
# output "alb_dns_name" {
#   value = module.ALB.dns_name
#   description = "The DNS name of the Application Load Balancer."
# }

# # Output Security Group IDs
# output "security_group_ids" {
#   value = module.SG.security_group_ids
#   description = "The list of security group IDs."
# }

# # Output RDS endpoint
# output "rds_endpoint" {
#   value = module.RDS.endpoint
#   description = "The endpoint of the RDS instance."
# }

# # Output EFS ID
# output "efs_id" {
#   value = module.EFS.efs_id
#   description = "The ID of the Elastic File System."
# }

# # Output Compute instances public IPs
# output "compute_instance_ips" {
#   value = module.Compute.public_ips
#   description = "The public IPs of the compute instances."
# }
