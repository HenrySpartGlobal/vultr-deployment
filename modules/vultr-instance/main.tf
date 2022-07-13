resource "vultr_instance" "my_instance" {
  plan = var.plan
  region = var.region
  os_id = var.os_id
  label = var.label
  tags = var.tags
  hostname = var.hostname
  enable_ipv6 = true
}

resource "vultr_startup_script" "dl-dependencies" {
  name = "start-up=script"
  script = var.start_up_script
}