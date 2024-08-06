//create a public subnet
resource "aws_subnet" "kina_pub_subnet" {
    vpc_id = aws_vpc.kina_vpc.id
    cidr_block = "150.0.0.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = { 
        Name = "kina_public_subnet"
    }
}

//create a private subnet
resource "aws_subnet" "kina_pri_subnet" {
   vpc_id = aws_vpc.kina_vpc.id
    cidr_block = "150.0.1.0/24"
    availability_zone = "us-east-1b"

    tags = { 
        Name = "kina_private_subnet"
    }  
}