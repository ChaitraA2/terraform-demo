terraform {
	backend "s3" {
		bucket = "terraform-bucket"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}
}
		
