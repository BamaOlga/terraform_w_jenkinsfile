//associate  route tables to subnets
resource "aws_route_table_association" "kina_pub_rta" {
    subnet_id = aws_subnet.kina_pub_subnet.id
    route_table_id = aws_route_table.pub_rt.id
}

//associate  route tables to subnets
resource "aws_route_table_association" "kina_priv_rta" {
    subnet_id = aws_subnet.kina_pri_subnet.id
    route_table_id = aws_route_table.priv_rt.id
}