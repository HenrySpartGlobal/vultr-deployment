resource "vultr_instance" "my_instance" {
  plan = var.plan
  region = var.region
  os_id = var.os_id
  label = var.label
  tags = var.tags
  hostname = var.hostname
  enable_ipv6 = true

}