output "aws_azs" {
  value = data.aws_availability_zones.awsazs.names
}

output "centos_ami_id" {
  value = data.aws_ami.centos.id
}

output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}