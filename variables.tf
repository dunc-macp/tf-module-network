variable "backend" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "public_subnets" {
    type = map(object(
        {
            cidr = string,
            availability_zone = string
        }
    ))
}