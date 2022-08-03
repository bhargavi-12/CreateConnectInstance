resource "aws_connect_instance" "Connect_Instance" {
  identity_management_type = var.management_type
  inbound_calls_enabled    = var.inbound_calls
  instance_alias           = var.instance_alias_value
  outbound_calls_enabled   =  var.outbound_calls
}