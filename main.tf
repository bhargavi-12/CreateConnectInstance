module "connect"{
    source = "./Modules/connect"
    for_each   = {
    for index, func in var.connect_Instance:
    func.instance_alias_name => func
    }
    management_type=each.value.management_type_name
    inbound_calls=each.value.inbound_calls_name
    instance_alias_value=each.value.instance_alias_name
    outbound_calls=each.value.outbound_calls_name
    
} 