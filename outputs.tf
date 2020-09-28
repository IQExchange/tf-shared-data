# AWS Outputs

output "aws_azs" {
  description = "(available) AWS Availability Zones"
  value       = data.aws_availability_zones.awsazs.names
}

output "amzn_linux_ami_id" {
  description = "Latest Amazon Linux 2 AMI"
  value       = data.aws_ami.amazon_linux_2.id
}

output "centos_ami_id" {
  description = "Latest CentOS 7 AMI"
  value       = data.aws_ami.centos.id
}

output "ubuntu_ami_id" {
  description = "Latest Ubuntu (bionic) AMI"
  value       = data.aws_ami.ubuntu.id
}

output "windows_ami_id" {
  description = "Latest Windows 2019 AMI"
  value       = data.aws_ami.windows_2019.id
}


# Specific Outputs

output "private_subnet_ids" {
  value = var.specific_output ? data.aws_subnet_ids.private_subnets.ids : ["N/A"]
}

output "public_subnet_ids" {
  value = var.specific_output ? data.aws_subnet_ids.public_subnets.ids : ["N/A"]
}

output "vpc_id" {
  value = var.specific_output ? data.aws_vpc.vpc.id : "N/A"
}
