output "vpc_id" {
    value = aws_vpc.main.id
}

# output "public_subnets" {
#     value = [for ps in aws_subnet.public_subnets : ps.id]
# }

output "public_subnets" {
    value = [for ps in aws_subnet.public_subnets : {
        id = ps.id,
        az = ps.availability_zone
    }]
}

output "backend" {
    value = var.backend
}

locals {
    backend = jsondecode(var.backend)
}

resource "aws_s3_object" "public_subnets" {
    bucket = local.backend.bucket
    key = "${local.backend.key}/outputs.json"
    content = "hello"
}