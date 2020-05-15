# AWS Outputs

output "aws_azs" {
  value = data.aws_availability_zones.awsazs.names
}

output "centos_ami_id" {
  value = data.aws_ami.centos.id
}

output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}

# IQX Outputs

output "private_subnet_ids" {
  value = data.aws_subnet_ids.private_subnets.ids
}

output "public_subnet_ids" {
  value = data.aws_subnet_ids.public_subnets.ids
}

output "vpc_id" {
  value = data.aws_vpc.vpc.id
}