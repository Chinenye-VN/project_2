variable "ami" {
  description = "AMI of EC2 instance, default is Ubuntu 18.04"
  default     = "ami-09a1e275e350acf38"
}

variable "instance-type" {
  description = "The type of machine to run the image on"
  default     = "t2.micro"
}

variable "pem-key" {
  description = "The Key which I will be able to SSH in to my EC2 using"
  default     = "MyKey"
}

variable "subnet_id" {
  description = "The ID of the subnet which I will deploy EC2 in to"
  default     = "subnet-0fd2d39e6c907321d"
}

variable "vpc_security_group_ids" {
  description = "The IDs of the security group we will attach to the EC2"
  default     = "sg-03d1e32d5a7d3f5ba"
}

variable "associate_public_ip_address" {
  description = "Associate Public IP to machines that need public access"
  default     = false
}
