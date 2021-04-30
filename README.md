# Overview

Used to pull common data from AWS, as well as optionally
from a few specific resources, such as VPC, private/public subnets

## Disclaimer

NO warranty or guarantee that this module will be useful
at all

## Usage

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.14.11 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | environment qualifier for use in filtering vpc tag | `string` | `"nonexistant"` | no |
| specific\_output | Whether to output specific info, or only generic AWS info | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| amzn\_linux\_ami\_id | Latest Amazon Linux 2 AMI |
| aws\_azs | (available) AWS Availability Zones |
| centos\_ami\_id | Latest CentOS 7 AMI |
| private\_subnet\_ids | n/a |
| public\_subnet\_ids | n/a |
| ubuntu\_ami\_id | Latest Ubuntu (bionic) AMI |
| vpc\_id | n/a |
| windows\_ami\_id | Latest Windows 2019 AMI |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
