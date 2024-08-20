resource "aws_networkmonitor_monitor" "this" {
  for_each = { for i in var.targets : i.name => i }
  #for_each = { for i in local.probes : i.name => i }

  aggregation_period = try(each.value.aggregation_period, 30)
  monitor_name       = each.key
}

resource "aws_networkmonitor_probe" "this" {
  for_each = { for i in local.probes : i.probe_name => i }

  monitor_name     = each.value.monitor_name
  destination      = each.value.destination
  destination_port = each.value.destination_port
  protocol         = each.value.protocol
  source_arn       = each.value.source_arn

  depends_on = [aws_networkmonitor_monitor.this]
}
