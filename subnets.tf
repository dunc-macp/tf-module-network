resource "aws_subnet" "public_subnets" {
    for_each = var.public_subnets
    vpc_id = aws_vpc.main.id
    cidr_block = each.value.cidr
    availability_zone = each.value.availability_zone
    tags = {
        Name = "public-subnet-${each.key}"
    }
}