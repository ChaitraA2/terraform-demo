resource "aws_instance" "my_instance" {
	ami = var.instance_ami
	count = var.instance_count
	instance_type = var.instance_type
 }

//resource "aws_instance" "my_instance1" {
//	ami = var.instance_ami
//	count = var.instance_count
//	instance_type = var.instance_type
//}

Resource "aws_vpc" "my_vpc" {
	cidr_block = "10.0.0.0/16"
}
