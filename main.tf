resource "aws_instance" "my_instance" {
	ami = "ami_value"
	count = 1
	instance_type = "t2.nano"
 }

resource "aws_instance" "my_instance1" {
	ami = "ami_value"
	count = 1
	instance_type = "t2.nano"
}

Resource "aws_vpc" "my_vpc" {
	cidr_block = "10.0.0.0/16"
}
