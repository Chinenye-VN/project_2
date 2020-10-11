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
variable "vpc_security_groups_ids" {
  description = ["sg-03d1e32d5a7d3f5ba"]
}


