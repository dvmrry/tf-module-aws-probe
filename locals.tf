locals {
  probes = flatten([
    for k, v in data.aws_subnet.this : [
      for value in var.targets : {
        monitor_name     = "${value.name}"
        probe_name       = "${value.name}-${v.availability_zone}"
        destination      = value.address
        destination_port = value.port
        protocol         = value.protocol
        source_arn       = v.arn
      }
    ]
  ])
}
