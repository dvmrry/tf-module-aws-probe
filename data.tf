data "aws_vpc" "this" {
  filter {
    name   = "tag:Name"
    values = [var.vpc]
  }
}

data "aws_subnets" "this" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }
  filter {
    name   = "tag:Name"
    values = ["*priv*"]
  }
}

data "aws_subnet" "this" {
  for_each = { for i in flatten(data.aws_subnets.this.ids) : i => i }
  id = each.key
}
