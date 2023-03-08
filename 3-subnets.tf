resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "${var.aws_region}a"

  tags = {
    "Name" = "private-subnet-a"
  }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = "${var.aws_region}b"

  tags = {
    "Name" = "private-subnet-b"
  }
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.64.0/19"
  availability_zone       = "${var.aws_region}a"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "public-subnet-a"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.96.0/19"
  availability_zone       = "${var.aws_region}b"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "public-subnet-b"
  }
}
