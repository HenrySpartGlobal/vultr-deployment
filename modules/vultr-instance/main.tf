resource "vultr_instance" "my_instance" {
  plan = var.plan
  region = var.region
  os_id = var.os_id
  label = var.label
  tags = var.tags
  hostname = var.hostname
  enable_ipv6 = true
  ssh_key_ids = var.ssh_key_id
}

data "vultr_instance" "testing" {
  depends_on = [vultr_instance.my_instance]
  filter {
    name   = "label"
    values = ["Baby Yoda Bot"]
  }
}

output "testing" {
  value = data.vultr_instance.testing.main_ip
}