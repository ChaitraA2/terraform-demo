output "instance_ip_addr" {
	value = aws_instance.my_instance[*].private_ip
}

output "instance_pip_addr" {
	value = aws_instance.my_instance[*].public_ip
}
