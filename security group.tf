//create a security group
resource "aws_security_group" "kina_sg" {
    
  vpc_id      = aws_vpc.kina_vpc.id

 ingress {
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  from_port = 22
  to_port   =22
}

ingress {
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  from_port = 0
  to_port   = 0
}

egress {
  protocol = "-1" //semantically equivalent to all ports
  cidr_blocks = ["0.0.0.0/0"]
  from_port = 0
  to_port   = 0
}

tags = {
    Name = "kina_sg"
  }
}
/*inbound rule: from internet using port 22 and 8080
outbound rule: to internet using all ports
*/