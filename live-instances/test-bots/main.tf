module "vultr-instances" {
  source = "../../modules/vultr-instance"

  plan = "vc2-1c-1gb"
  region = "lhr"
  os_id = 477
  label = "Baby Yoda Bot"
  tags = ["baby-yoda", "Test", "Version: 0.0.1"]
  hostname = "baby-yoda-bot"
  api_key = var.api_key
}