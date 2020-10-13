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

variable "associate_public_ip_address" {
  description = "Associate Public IP to machines that need public access"
  default     = true
}




variable "engine" {
  description = "The type of database"
  default     = "mysql"
}
variable "engine_version" {
  description = "The version mysql database"
  default     = "5.7"
}
variable "instance_class" {
  description = "The type of instance the database will be using"
  default     = "db.t2.micro"
}
variable "name" {
  description = "The name of this RDS"
  default     = "mydb"
}
variable "username" {
  description = "The username to access mysql"
  default     = "admin"
}
variable "password" {
  description = "The password to access mysql"
  default     = "admin123"
}

