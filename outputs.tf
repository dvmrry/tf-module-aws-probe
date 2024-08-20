output "arn" {
  value = [ for i in data.aws_subnet.this : i.arn ]
}

output "az" {
  value = [ for i in data.aws_subnet.this : i.availability_zone_id ]
}

output "probes" {
  value = local.probes
}
