## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.63.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.63.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_networkmonitor_monitor.this](https://registry.terraform.io/providers/hashicorp/aws/5.63.1/docs/resources/networkmonitor_monitor) | resource |
| [aws_networkmonitor_probe.this](https://registry.terraform.io/providers/hashicorp/aws/5.63.1/docs/resources/networkmonitor_probe) | resource |
| [aws_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/5.63.1/docs/data-sources/subnet) | data source |
| [aws_subnets.this](https://registry.terraform.io/providers/hashicorp/aws/5.63.1/docs/data-sources/subnets) | data source |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/5.63.1/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_targets"></a> [targets](#input\_targets) | n/a | <pre>list(object({<br>    name        = string<br>    address     = string<br>    port        = number<br>    protocol    = string<br>    packet_size = optional(number, 56)<br>  }))</pre> | n/a | yes |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_az"></a> [az](#output\_az) | n/a |
| <a name="output_probes"></a> [probes](#output\_probes) | n/a |
