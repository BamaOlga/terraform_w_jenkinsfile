//create a public rt
resource "aws_route_table" "pub_rt" {
    vpc_id = aws_vpc.kina_vpc.id
    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.kina_igw.id
    }

        tags = {
            Name = "public_rt"
        }
    }
  

//create a private rt
resource "aws_route_table" "priv_rt" {
    vpc_id = aws_vpc.kina_vpc.id

    route  {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.kina_natgw.id
    }

        tags = {
            Name = "private_rt"
        }
    }
  