//create an internet gateway for the vpc
resource "aws_internet_gateway" "kina_igw" {
    vpc_id = aws_vpc.kina_vpc.id
    tags ={
        Name = "kina_igw"
    }
      
  
}