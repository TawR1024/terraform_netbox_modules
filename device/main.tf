resource "netbox_device" "device" {
  name     = var.name
  site     = var.site
  tenant   = var.tenant
  rack     = var.rack
  position = var.position
  type     = var.type
  role     = var.role
  status   = var.status
}


resource "netbox_interface" "device_interface" {
  for_each = var.connections
  name     = each.key
  device   = netbox_device.device.id
}

resource "netbox_cable" "device_connections" {
  for_each         = var.connections
  device_a_name    = netbox_device.device.name
  interface_a_name = each.key
  device_b_name    = each.value.device
  interface_b_name = each.value.interface
}
