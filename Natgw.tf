//create a NAT gateway
resource "aws_eip" "kina_eip" {
tags = {
  Name = "kina_natgw_eip"

  }  
}

//associate nat to eip
resource "aws_nat_gateway" "kina_natgw" {
    allocation_id =  aws_eip.kina_eip.id
    subnet_id =   aws_subnet.kina_pub_subnet.id

    tags = {
      Name ="kina_natgw"
    }
}