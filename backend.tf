terraform {
	backend "s3" {
		bucket = "terraform-chaitra"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}
}
		
