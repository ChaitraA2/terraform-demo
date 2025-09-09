variable "instance_ami" {
	type = string
	default = "ami-123"
}
variable "instance_count" {
	type = number
	default = 1
}
variable "instance_type" {
	type = string
	default = "t2.nano"
}
