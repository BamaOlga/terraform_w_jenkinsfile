//create a public NACL
resource "aws_network_acl" "kina_pub_nacl" {
  vpc_id = aws_vpc.kina_vpc.id

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "tcp"
    rule_no = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }

ingress {
    protocol   = "tcp"
    rule_no = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 8080
    to_port    = 8080
  }

  tags = {
    Name = "kina_pub_nacl"
  }
}
/*inbound rule: from internet using port 22 ONLY
outbound rule: to internet using all ports
*/

//create a private NACL
resource "aws_network_acl" "kina_priv_nacl" {
    vpc_id = aws_vpc.kina_vpc.id

 egress {
    protocol   = "all"
    rule_no = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "all"
    rule_no = 100
    action     = "allow"
    cidr_block = "150.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "kina_priv_nacl"
  }
}   
  
/*inbound rule: from within VPC ONLY
outbound rule: to internet using all ports
*/