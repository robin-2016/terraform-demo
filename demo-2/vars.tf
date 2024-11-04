variable "AWS_ACCESS_KEY" {
  type        = string
  default     = ""
}
variable "AWS_SECRET_KEY" {
  type        = string
  default     = ""
}
variable "AWS_REGION" {
  type        = string
  default     = "ap-east-1"
}
variable "AMI" {
  type        = string
  default     = "ami-0ad7f83eab34d93a7"
}
variable "INSTANCE_TYPE" {
  type        = string
  default     = "t3.micro"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
