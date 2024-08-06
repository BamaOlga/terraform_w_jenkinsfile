// create a public instance
resource "aws_instance" "kina_pub_inst" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    key_name = "desamist"
    subnet_id = aws_subnet.kina_pub_subnet.id
    security_groups = [aws_security_group.kina_sg.id]

    tags = {
      Name = "kina_pub_inst"
    }
  
}

//create a private instance
resource "aws_instance" "kina_priv_inst" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    key_name = "desamist"
    subnet_id = aws_subnet.kina_pri_subnet.id
    security_groups = [aws_security_group.kina_sg.id]

    tags = {
      Name = "kina_priv_inst"
    }
  
}