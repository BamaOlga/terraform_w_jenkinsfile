//create a complete aws vpc code

resource "aws_vpc" "kina_vpc" {
    cidr_block = "150.0.0.0/16"
    instance_tenancy = "default" 
    tags = {
        Name = "kina_vpc"
    }
}