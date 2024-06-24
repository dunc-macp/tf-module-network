resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.main.id
}

resource "aws_route" "route" {
    route_table_id = aws_route_table.rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "rta" {
    for_each = aws_subnet.public_subnets
    subnet_id = each.value.id
    route_table_id = aws_route_table.rt.id
}